FROM bioconductor/bioconductor_docker:RELEASE_3_14

LABEL image.authors="Michael Kaufman"

RUN Rscript -e "BiocManager::install(c('tidyverse', 'rmarkdown', 'Seurat','cowplot', 'ComplexHeatmap', 'scran','scDblFinder', 'limma', 'clustifyr', 'slingshot', 'tradeSeq', 'clusterExperiment'))"
RUN installGithub.r theislab/destiny
RUN installGithub.r immunogenomics/harmony
RUN Rscript -e "install.packages('markdown', 'ggsci')"

WORKDIR /home/rstudio