# BOT 536 
library(ape)

setwd("~/Desktop/Bot563_Project")
data <- read.csv("~/Desktop/Bot563_Project/dataframe.csv") 
tree <- read.nexus("untrimmed_mrbayes_output.nex.con.tre")

# Change tree tip 
tree$tip.label <- data[[2]][match(tree$tip.label,data[[1]])]
tree$tip.label <- sub("\\_","",tree$tip.label)
plot(tree)
write.tree(tree, "tree_file_untrimmed_Mrbayes")


