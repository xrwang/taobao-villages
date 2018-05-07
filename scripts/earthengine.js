
var multiPoint = ee.Geometry.MultiPoint([[119.11526, 36.883353], [106.728735, 27.040506]]);
var geometries = multiPoint.geometries();
var madingcun = ee.FeatureCollection(madingcun);
var chengloucun = ee.FeatureCollection(chengloucun);

var getQABits = function(image, start, end, newName) {
    // Compute the bits we need to extract.
    var pattern = 0;
    for (var i = start; i <= end; i++) {
       pattern += Math.pow(2, i);
    }
    return image.select([0], [newName])
                  .bitwiseAnd(pattern)-
                  .rightShift(start);
};

// A function to mask out cloudy pixels.
var cloud_shadows = function(image) {
  var QA = image.select(['pixel_qa']);
  return getQABits(QA, 3,3, 'Cloud_shadows').eq(0);
};

// A function to mask out cloudy pixels.
var clouds = function(image) {
  var QA = image.select(['pixel_qa']);
  return getQABits(QA, 5,5, 'Cloud').eq(0);
};

var maskClouds = function(image) {
  var cs = cloud_shadows(image);
  var c = clouds(image);
  image = image.updateMask(cs);
  return image.updateMask(c);
};

// This function masks clouds and adds quality bands to Landsat 8 images.
var addQualityBands = function(image) {
  return maskClouds(image)
    .addBands(image.normalizedDifference(['B5', 'B4']))
    .addBands(image.metadata('system:time_start'));
};


var dongchangzhaicun = geometries.get(0);
var libeicun = geometries.get(1);
print('Point 1', dongchangzhaicun);
print('Point 2', libeicun);

var start2017 = ee.Date('2017-04-01');
var finish2017 = ee.Date('2017-08-01');

var start2016 = ee.Date('2016-01-01');
var finish2016 = ee.Date('2016-10-01');

var start2015 = ee.Date('2015-01-01');
var finish2015 = ee.Date('2015-08-01');

var start2014 = ee.Date('2014-01-01');
var finish2014 = ee.Date('2014-08-01');



var filteredCollection = ee.ImageCollection(landsat8_sr)
      .filterBounds(libeicun)
      .filterDate(start2017,finish2017)
      .map(addQualityBands)
      .sort('CLOUD_COVER');




var filteredCollectionVIIRS = ee.ImageCollection(viirsNL)
      .filterBounds(libeicun)
      .filterDate(start2014,finish2014)
      .select('avg_rad');

var first = filteredCollection.first();
var firstV = filteredCollectionVIIRS.first();
print(firstV)
print('!!!')
var vizParams = {bands: ['B4', 'B3', 'B2'],min: [0,0,0],max: [2000, 2000, 2000]};


var image = ee.Image(first).float();
var NLimage = ee.Image(firstV).float();

Map.centerObject(fc, 12);
Map.addLayer(image, vizParams, "ls image")
var nl2014 = ee.Image('NOAA/DMSP-OLS/NIGHTTIME_LIGHTS/F182013');
var lights = nl2014.select('stable_lights');

Map.addLayer(lights, {min: 0, max: 63}, 'nl');
Map.addLayer(NLimage,  {min: 0, max: 63}, 'nlviirs');
//var ndvi = image.normalizedDifference(['B5', 'B4']).rename('NDVI');

//var addNDVI = function(image) {
//  var ndvi = image.normalizedDifference(['B5', 'B4']).rename('NDVI');
//  return image.addBands(ndvi);
// };

//var withNDVI = landsat8_sr.map(addNDVI);

//var t = withNDVI.qualityMosaic('NDVI');
// Display the result.
//var visParamsG = {bands: ['B4', 'B3', 'B2'], max: 1};
//Map.addLayer(t, visParamsG, 'gpc');

var nir = image.select('B5');
var red = image.select('B4');
var ndvi = nir.subtract(red).divide(nir.add(red)).rename('NDVI');

// Display the result.
Map.centerObject(fc, 12);
var ndviParams = {min: -1, max: 1, palette: ['blue', 'white', 'green']};
// Map.addLayer(ndvi, ndviParams, 'NDVI image');


//-----------------
// greenest pixel
//---------------

// Create a greenest pixel composite.
var greenestPixelComposite = filteredCollection.qualityMosaic('nd').float();

// Display the results.
var vizParamsGG = {bands: ['B4', 'B3', 'B2'], min: 120, max: 2000};
//var vizParamsGG = {bands: ['B5', 'B4', 'B3'], min: 0, max: 0.4};
Map.addLayer(greenestPixelComposite, vizParamsGG, 'greenest pixel composite');
Map.addLayer(fc, {color: 'FF0000'}, 'bbox');




// Export the image, specifying scale and region.
Export.image.toDrive({
  image: greenestPixelComposite,
  description: 'lbc_2017',
  scale: 30,
  region: fc
});

// Export the image, specifying scale and region.
Export.image.toDrive({
  image: NLimage,
  description: 'lbc_2014_nlviirs',
  scale: 750,
  region: fc
});
