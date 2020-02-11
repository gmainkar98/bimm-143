#'---
#'title: "Data Visualization and Graphs in R"
#'author: "Gayatri Mainkar"
#'date: "21 Jan, 2020"
#'---

#Class 5
#Data Visualization and graphs in R

plot(1:10, col = "blue", typ = "o")

#Need to import/read input data file first
weight <- read.table(file = "bimm143_05_rstats/weight_chart.txt", header = TRUE)

#Section 2A
plot(weight$Age, weight$Weight, type = "o", lwd = 2, cex = 1.5, pch = 15, xlab = "Age (months)", ylab = "Weight (kg)", main = "Baby weight with age", col = "blue", ylim = c(2,10))

#Section 2B
mouse <- read.table("bimm143_05_rstats/feature_counts.txt", header = TRUE, sep = "\t")
par(mar = c(5,11,2,1))
barplot(mouse$Count, horiz = TRUE, names.arg = mouse$Feature, las = 1, main = "Feature counts", col = "light blue")

#Section 3A
mfc <- read.table("bimm143_05_rstats/male_female_counts.txt", header = TRUE, sep = "\t")
barplot(mfc$Count,col = c("blue2","red2"))

#Section 3B
genes <- read.delim("bimm143_05_rstats/up_down_expression.txt", header  =TRUE)
palette(c("red","green","blue"))
plot(genes$Condition1, genes$Condition2, col = genes$State)

#Section 3C
meth <- read.delim("bimm143_05_rstats/expression_methylation.txt", header = TRUE)
inds <- meth$expression > 0
dcols.custom <- densCols(meth$gene.meth[inds], meth$expression[inds],colramp = colorRampPalette(c("blue2","green2","red2","yellow")))
plot(meth$gene.meth[inds], meth$expression[inds], pch = 20, col = dcols.custom)
