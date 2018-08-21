
<!-- README.md is generated from README.Rmd. Please edit that file -->
Stan Training (August 2018, NYC)
================================

**Organizer:** Lander Analytics
**Host:** eBay
**Instructors:** Stan developers [Jonah Gabry](https://jgabry.github.io/) and [Rob Trangucci](https://github.com/rtrangucci)

-   Repository overview:
    -   The main file is `Pest_Control_Example.Rmd`
    -   The two data files used are in the `data` directory
    -   The Stan programs we wrote together during the course are in the `stan_programs` directory
    -   PDF versions of the slides are the `slides` directory
    -   The `reading-list.md` and `reading-list.html` files are a reading list compiled based on topics that were asked about in the class

**UPDATE:** After the class we added the reading list and also made a few changes to the other files. We edited the Stan code to add a few more code comments and make the programs a bit more organized, and we edited the markdown document to clarify a few parts better, remove some unneeded fluff, and add a Gaussian process section at the end that goes further than we did in class.

Setup for course
================

Please follow the instructions below to set up the rest of your environment for the training.

Packages
--------

To get started run the following code to install the latest version of the necessary packages, except for Stan which we'll install afterwards.

<pre class='sourceCode r'><code class='sourceCode r'>
packages <- c(
    'bayesplot', 
    'ggplot2', 
    'ggthemes', 
    'here', 
    'jsonlite', 
    'loo', 
    'lubridate', 
    'rmarkdown', 
    'rprojroot', 
    'shinystan', 
    'tidyverse', 
    'usethis'
)
install.packages(packages)
</code></pre>

Project Structure
-----------------

Making use of RStudio projects greatly improves the user experience. To facilitate this, users should run the following code which will recreate this project on their computer. Be sure to select the positive prompts such as `yes`, `yeah`, etc.

``` r
newProject <- usethis::use_course('https://github.com/jaredlander/StanAugust18/archive/master.zip')
```

After running this code you will be in an RStudio Project called StanAugust18. You can see this in the top right of RStudio (the name in the image may be different).

<img src="images/ProjectCorner.png" width="225" />

Data
----

Data for the class is kept at [data.world](https://data.world/landeranalytics/standata). Run the following code to download all the data. This requires that you are using an [RStudio Project](https://support.rstudio.com/hc/en-us/articles/200526207-Using-Projects) setup exactly like this repo, which is done if you followed the preceding code.

``` r
source('prep/DownloadData.r')
```

Installing Stan
---------------

`stan` takes a little extra care to install, so please follow the instructions <https://github.com/stan-dev/rstan/wiki/RStan-Getting-Started#installation>.
