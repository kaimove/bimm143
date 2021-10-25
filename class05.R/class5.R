library(ggplot2)
# every ggplot has a data +aes + geoms
p1 <- ggplot(data=cars)+
  aes(x=speed, y=dist)+
geom_point()+
  labs(title="Speed and Stopping Distances of Cars",
       x="Speed (MPH)", 
       y="Stopping Distance (ft)",
       subtitle = "Your informative subtitle text here",
       caption="Dataset: 'cars'") 
 p1+ geom_smooth(method="lm", se=TRUE) +
   theme_classic()
 ###
 url <- "https://bioboot.github.io/bimm143_S20/class-material/up_down_expression.txt"
 genes <- read.delim(url)
 head(genes)

 # How many genes
 nrow(genes)
 
 #how many collumns
 ncol(genes)
 
 #Q How to access state col
 table(genes$State)
 
 #Q amount of up genes 2 sig figs
 round( table(genes$State)/nrow(genes) * 100, 2 )
 
p2 <- (ggplot(genes)+
   aes(x=Condition1, y=Condition2, col=State)+
   geom_point())
p2 + labs(title="Gene Expresion Changes Upon Drug Treatment",
          x="Control (no drug) ",
          y="Drug Treatment")+geom_smooth(method="lm", se=FALSE,colour="orange") +
  theme_classic()+scale_colour_manual( values=c("blue","purple","green")) 


###
#install.packages("gapminder")
library(gapminder)
# File location online
#url <- "https://raw.githubusercontent.com/jennybc/gapminder/master/inst/extdata/gapminder.tsv"
#gapminder <- read.delim(url)

#install.packages("dplyr")
# install.packages("dplyr")  ## uncoment to install if needed
library(dplyr)
gapminder_2007 <- gapminder %>% filter(year==2007)

ggplot(gapminder_2007) +
  aes(x=gdpPercap, y=lifeExp, color=continent, size=pop) +
  geom_point(alpha=0.5)
