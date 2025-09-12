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
Add a box around the figure, in accordance with the ADF&G publication guidelines. This should be turned off ("no") if one is creating a multi-panel in postprocessing (with the patchwork library, for example).

### Examples
Data from the R package Iris (CITE!!) were used for the examples.

Basic scatterplot:
![basic plot](/example_figures/base_plot.png)

Basic multipanel plot:
![facet plot](/example_figures/facet_plot_nocolor.png)

Violin plot:
![violin plot](/example_figures/fill_plot_grey.png)



### Colors
While frowned upon in official ADF\&G publications, adding a color palette to a graph can greatly improve the impact, especially for posters and presentations. The theme itself is black and white, but colors can be added with adfg_colors (\*\*LINK; Justin Priest), or any other R color palette of choice. adfg\_colors has some ADF\&G and Alaska-based color palettes.

Scatterplot:
![basic plot](/example_figures/color_plot.png)

Multipanel plot:
![facet plot](/example_figures/facet_plot.png)

Violin plot:
![violin plot](/example_figures/fill_plot.png)

**FLAG - include graph example code? see the work of others



### To do:

* a reference to color and adfg\_colors
* add links to the other mentioned themes - theme\_adfg by justin was a draft but theme\_sleek by Andrew is live I think
* clean up code- the hashtags mostly
