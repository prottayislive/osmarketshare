library(ggplot2)
library(ggplot2)

# create a dataset
Continent <- c(rep("Americas" , 4) , rep("Europe" , 4) , rep("Middle East & N.Africa" , 4) , rep("Africa" , 4), rep("Asia",4) )
Operating_System <- rep(c("Windows" ,"MacOS", "Linux" , "Chrome & Others") , 5)
#using mean % of all values in a column per continent
num <- c(76.75,10.375,2,10.875,80,12.333,2,5.67,76.75,4.625,1.25,17.375,61.5,5,2,31.5,79.067,6.733,1.667,12.533)
data <- data.frame(Continent,Operating_System,num)

# Stacked + percent
p1 <- ggplot(data, aes(fill=Operating_System, y=num, x=Continent)) + 
  geom_bar(position="fill", stat="identity")+
  labs(
    title = "Desktop Operating System Market Share")+
  scale_fill_manual(values=c("#FFC0CB",
                             "#FFC300",
                             "#808080",
                             "#0096FF"))
