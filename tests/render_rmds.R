## call rmarkdown on all .Rmd files
f <- list.files(recursive = TRUE)
Rmds <- f[grepl(".Rmd$", f)]
remove <- ('analysis.Rmd')
## Remove the R markdown that has the python file for now
Rmd2s <- setdiff(Rmds, remove)
lapply(Rmd2s, rmarkdown::render)