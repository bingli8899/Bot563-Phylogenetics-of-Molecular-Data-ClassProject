# BOT 536 
library(ggplot2)
install.packages("ggtree")
if (!require("BiocManager", quietly = TRUE))
  install.packages("BiocManager")
BiocManager::install(version = "3.15")


source("https://bioconductor.org/biocLite.R")
setwd("~/Desktop/Bot563_Project")
data <- read.csv("~/Desktop/Bot563_Project/dataframe.csv") # dataframe inported manually 
tree <- read.nexus("untrimmed_mrbayes_output.nex.con.tre")

# Change tree tip 
tree$tip.label <- data[[2]][match(tree$tip.label,data[[1]])]
tree$tip.label <- sub("\\_","",tree$tip.label)
plot(tree)
write.tree(tree, "tree_file_untrimmed_Mrbayes")


