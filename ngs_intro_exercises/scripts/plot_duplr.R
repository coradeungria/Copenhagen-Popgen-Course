#!/usr/bin/env Rscript

# plot_duplr.txt <ngsParalog calclR output file> <oufile prefix>

args <- commandArgs(trailingOnly=TRUE)

dat <- read.table(args[1], head=FALSE)
outprefix <- args[2]
gsdf.cord <- c(18079155,18100834)

pdf(file=paste0(outprefix,".pdf"),width=11,height=7)

plot(x=dat$V2,y=dat$V5,type="b",xlab="Chr7 position", ylab="LRT", main="")
abline(v=gsdf.cord[1], col="red", lty=2)
abline(v=gsdf.cord[2], col="red", lty=2)
text(x=18090000, y=300, "gsdf duplication")

invisible(dev.off())
