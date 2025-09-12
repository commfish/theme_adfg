# theme\_adfg

A ggplot2 theme for reproducible figures in R in a uniform Alaska Department of Fish and Game (ADF\&G) style.



This theme creates a graph template for ADF\&G biologists, biometricians, and scientists to create a uniform graph output style that conforms with ADF\&G publication standards. This theme was created in collaboration with the ADF\&G reproducibility crew and publication team, to create uniform and professional ADF\&G figures. This work is heavily based on Andrew Padilla's theme\_adfg draft code (I even stole the name) and theme\_crisp by Justin Priest. The majority of this code was written by Padilla and Priest, and my contribution was just minor edits and finalizations.

This theme is still under review.

### 

### Arguments of note
font_family = "Times New Roman"
ADF&G guidelines recommend the Times New Roman font for all graphs. This can easily be changed to a sans-serif font for improved readability.

legend.position.set = c(0.8, 0.9)
Change the legend location here.

legend.justification = c("center")
Change the legend justification here

box = "yes"; "no"
Add a box around the figure, in accordance with the ADF&G publication guidelines. This should be turned off ("no") if one is creating a multi-panel in postprocessing (with the patchwork library, for example).

### Examples
Data from the R package Iris (CITE!!) were used for the examples.

Basic scatterplot:

```
ggplot(iris) + aes(x = Petal.Length, y= Petal.Width) + geom_point() +
    labs( x= "Petal length", y="Petal width") + 
    theme_adfg_2(box = "yes")
```

![basic plot](/example_figures/base_plot.png)

Basic multipanel plot:

```
ggplot(iris) + aes(x = Petal.Length, y= Petal.Width) + geom_point() +
    labs( x= "Petal length", y="Petal width") + 
    theme_adfg_2(box = "yes")+ 
    facet_wrap(~Species, scales = "free")+
    guides(color = "none")
```

![facet plot](/example_figures/facet_plot_nocolor.png)

Violin plot:

```
ggplot(iris) + aes(x = Species, y= Petal.Length, fill = Species) + geom_violin() +
    labs( x= "Species", y="Frequency") + 
    theme_adfg(legend.position.set = c(0.9, 0.2), box = "yes")+ #move legend to a good spot
    scale_fill_adfg(palette = "bristolbay", discrete = TRUE, useexact = TRUE)
```

![violin plot](/example_figures/fill_plot_grey.png)



### Colors
While frowned upon in official ADF\&G publications, adding a color palette to a graph can greatly improve the impact, especially for posters and presentations. The theme itself is black and white, but colors can be added with [adfg_colors](https://github.com/justinpriest/adfgcolors), or any other R color palette of choice. adfg\_colors has some ADF\&G and Alaska-based color palettes.

Scatterplot:

```
ggplot(iris) + aes(x = Petal.Length, y= Petal.Width, color = Species) + geom_point() +
    labs( x= "Petal length", y="Petal width") + 
    theme_adfg(legend.position.set = c(0.9, 0.18), #move legend to a good spot
                 box ="yes" #border
    )+ 
    scale_color_adfg(palette = "bristolbay", discrete = TRUE, useexact = TRUE)
```

![basic plot](/example_figures/color_plot.png)

Multipanel plot:

```
ggplot(iris) + aes(x = Petal.Length, y= Petal.Width, color = Species) + geom_point() +
    labs( x= "Petal length", y="Petal width") + 
    theme_adfg(box = "yes")+ 
    scale_color_adfg(palette = "bristolbay", discrete = TRUE, useexact = TRUE)+
    facet_wrap(~Species, scales = "free")+
    guides(color = "none")) #turn off legend, not needed here
```

![facet plot](/example_figures/facet_plot.png)


Violin plot:

```
ggplot(iris) + aes(x = Species, y= Petal.Length, fill = Species) + geom_violin() +
    labs( x= "Species", y="Frequency") + 
    theme_adfg(legend.position.set = c(0.9, 0.2), box = "yes")+ #move legend to a good spot
    scale_fill_adfg(palette = "bristolbay", discrete = TRUE, useexact = TRUE)
```

![violin plot](/example_figures/fill_plot.png)





