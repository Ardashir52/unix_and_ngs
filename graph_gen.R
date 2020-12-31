setwd('~/unix_and_ngs')
data = read.csv('data.csv')
library(ggpubr)
ggscatter(data, x = "qual", y = "dp",
          add = "reg.line", conf.int = TRUE, 
          cor.coef = TRUE, cor.method = "pearson",
          xlab = "qual", ylab = "dp")

cor_dat <- cor(data)
corrplot(cor_dat, method = "color")