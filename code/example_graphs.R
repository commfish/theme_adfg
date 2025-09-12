# theme_adfg example graphs
# Alex Reich; alex.reich@alaska.gov
# September 2025

#load code
source("code/theme_adfg_2025.R")

#test it
library(datasets)
data("iris")
names(iris)

#base plot
(base_plot <- ggplot(iris) + aes(x = Petal.Length, y= Petal.Width) + geom_point() +
    labs( x= "Petal length", y="Petal width") + 
    theme_adfg_2(box = "yes"))

#color plot
(color_plot <- ggplot(iris) + aes(x = Petal.Length, y= Petal.Width, color = Species) + geom_point() +
    labs( x= "Petal length", y="Petal width") + 
    theme_adfg_2(legend.position.set = c(0.9, 0.18), #move legend to a good spot
                 box ="yes" #border
    )+ 
    scale_color_adfg(palette = "bristolbay", discrete = TRUE, useexact = TRUE)
)


#facet no color 
(facet_plot_nocolor <- ggplot(iris) + aes(x = Petal.Length, y= Petal.Width) + geom_point() +
    #geom_smooth(group = 1, method = "lm") +
    labs( x= "Petal length", y="Petal width") + 
    theme_adfg_2(box = "yes")+ #seems to work well with facet_wrap
    #scale_color_adfg(palette = "bristolbay", discrete = TRUE, useexact = TRUE)+
    facet_wrap(~Species, scales = "free")+
    guides(color = "none"))

#facet color plot
(facet_plot <- ggplot(iris) + aes(x = Petal.Length, y= Petal.Width, color = Species) + geom_point() +
    #geom_smooth(group = 1, method = "lm") +
    labs( x= "Petal length", y="Petal width") + 
    theme_adfg_2(box = "yes")+ #seems to work well with facet_wrap
    scale_color_adfg(palette = "bristolbay", discrete = TRUE, useexact = TRUE)+
    facet_wrap(~Species, scales = "free")+
    guides(color = "none")) #turn off legend, not needed here

#fill plot
(fill_plot <- ggplot(iris) + aes(x = Species, y= Petal.Length, fill = Species) + geom_violin() +
    labs( x= "Species", y="Frequency") + 
    theme_adfg_2(legend.position.set = c(0.9, 0.2), box = "yes")+ #move legend to a good spot
    scale_fill_adfg(palette = "bristolbay", discrete = TRUE, useexact = TRUE))

#fill plot grey
(fill_plot_grey <- ggplot(iris) + aes(x = Species, y= Petal.Length, fill = Species) + geom_violin() +
    labs( x= "Species", y="Frequency") + 
    theme_adfg_2(legend.position.set = c(0.9, 0.2), box = "yes")+ #move legend to a good spot
    scale_fill_adfg(palette = "grays_bw", discrete = TRUE))

#ggsave these examples:
#dir.create("example_figures") #create directory if necessary
ggsave(filename = "example_figures/base_plot.png", plot = base_plot, width = 8, height = 6)
ggsave(filename = "example_figures/color_plot.png", plot = color_plot, width = 8, height = 6)
ggsave(filename = "example_figures/facet_plot.png", plot = facet_plot, width = 10, height = 6)
ggsave(filename = "example_figures/facet_plot_nocolor.png", plot = facet_plot_nocolor, width = 10, height = 6)
ggsave(filename = "example_figures/fill_plot.png", plot = fill_plot, width = 8, height = 6)
ggsave(filename = "example_figures/fill_plot_grey.png", plot = fill_plot_grey, width = 8, height = 6)


