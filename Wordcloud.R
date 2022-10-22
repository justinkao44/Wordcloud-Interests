setwd("/Users/justinkao/Desktop/R-Miscellaneous/R- Wordcloud")
rm(list = ls())
# install.packages("ggwordcloud")
install.packages("wordcloud")
install.packages("RcolorBrewer")


library(data.table) #data frame read
library(dplyr) #ranking frequency
library(grDevices) #png function
library(RColorBrewer) #brewer colors
library(wordcloud) #wordcloud
library(png)

# read in data table
Justinfield = fread("Field-Frequency-Wordcloud.csv")

# wordcloud
png("JustinField_Wordcloud.png", width =12, height = 6, units = 'in', res = 300)
par(mar = rep(0, 4))
set.seed(1337)
wordcloud( words = Justinfield$Field, freq = Justinfield$Frequency, scale = c(3.5, 0.25),
           max.words= 70, colors = brewer.pal(9, "PuBuGn"))

#review JustinField_wordcloud
install.packages('magick')
library(magick)
JustinField_wordcloud <- magick::image_read('/Users/justinkao/Desktop/R-Miscellaneous/R- Wordcloud/JustinField_Wordcloud.png')
plot(JustinField_wordcloud) # or print(img)

