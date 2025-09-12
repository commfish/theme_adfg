# theme\_adfg

A ggplot2 theme for reproducible figures in R in a uniform Alaska Department of Fish and Game (ADF\&G) style.



This theme creates a graph template for ADF\&G biologists, biometricians, and scientists to create a uniform graph output style that conforms with ADF\&G publication standards. This theme was created in collaboration with the ADF\&G reproducibility crew and publication team, to create uniform and professional ADF\&G figures. This work is heavily based on Justin Priest's theme\_adfg draft code (I even stole the name) and theme\_sleek (LINK\*\*?) by Andrew Padilla. The majority of this code was written by Priest and Padilla, and my contribution was just minor edits and finalizations.



This theme is still under review.

### 

### Arguments of note
font_family = "Times New Roman"
ADF&G guidelines recommend the Times New Roman font for all graphs. This can easily be changed to a sans-serif font for improved readability.

legend.position.set = c(0.8, 0.9)
Change the legend location here.

legend.justification = c("center)
Change the legend justification here

box = "yes"; "no"
Add a box around the figure, in accordance with the ADF&G publication guidelines

theme\_adfg\_2 = function (font\_size = 18,

                         font\_family = "Times New Roman", #"sans", #times new roman is recommended but it is a serif font - which is suboptimal for dataviz. 
                         #line\_size = 0.5,

                         rel\_small = 0.86 \* font\_size/font\_size,

                         rel\_tiny = 0.79 \* font\_size/font\_size,

                         rel\_large = 1.15 \* font\_size/font\_size,

                         legend.position.set= c(0.8,0.9), #"left", "right", "bottom", "top"

                         legend.justification = c("center"),

                         strip.background = element\_rect(fill = "grey80", color=NA),

                         strip.placement = "outside",

                         strip.text.y = element\_text(angle = -90),

                         box = "no" #if box = "yes", black rectangle boarder

 

)



\*\*Alex - look up theme\_cowplot and mimic how that is documented. Each argument, use?





### Examples


![basic plot](/example_figures/base_plot.png)


![facet plot](/example_figures/facet_plot_nocolor.png)


![violin plot](/example_figures/fill_plot_grey.png)






### Colors

While frowned upon in official ADF\&G publications, adding a color palette to a graph can greatly improve the impact, especially for posters and presentations. The theme itself is black and white, but colors can be added with adfg\_colors (\*\*LINK; Justin Priest), or any other R color palette of choice. adfg\_colors has some ADF\&G and Alaska-based color palettes.



EXAMPLE CODE:

\*\* include figure here



EXAMPLE GRAPH:



### To do:

* add example figs to the readme
* any Alyssa-recommended edits (waiting)
* make the readme professional- see other examples (how to load the theme in R, etc.)
* a reference to color and adfg\_colors
* add links to the other mentioned themes - theme\_adfg by justin was a draft but theme\_sleek by Andrew is live I think
* clean up code- the hashtags mostly
* is the current "serif" format actually times new roman??
