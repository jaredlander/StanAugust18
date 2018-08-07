
<!-- README.md is generated from README.Rmd. Please edit that file -->

# Stan Training

This is an empty repo to initialize an R project for training courses
organized by Lander Analytics.

Please follow all instructions to set up your environment for the
training.

# Packages

To get started run the following code to install the latest version of
the necessary packages.

<div class="sourceCode">

<pre class='sourceCode r'><code class='sourceCode r'>
packages <- c(
    'bayesplot', 
    'coefplot', 
    'ggplot2', 
    'ggthemes', 
    'here', 
    'jsonlite', 
    'loo', 
    'lubridate', 
    'reshape2', 
    'rmarkdown', 
    'rprojroot', 
    'shinystan', 
    'tidyverse', 
    'usethis'
)
install.packages(packages)
</code></pre>

</div>

# Project Structure

Making use of RStudio projects greatly improves the user experience. To
facilitate this, users should run the following code which will recreate
this project on their computer. Be sure to select the positive prompts
such as `yes`, `yeah`,
etc.

``` r
newProject <- usethis::use_course('https://github.com/jaredlander/StanAugust18/archive/master.zip')
```

After running this code you will be in an RStudio Project called
StanAugust18. You can see this in the top right of RStudio (the name in
the image may be different).

![](images/ProjectCorner.png)<!-- -->

# Data

Data for the class is kept at
[data.world](https://data.world/landeranalytics/standata). Run the
following code to download all the data. This requires that you are
using an [RStudio
Project](https://support.rstudio.com/hc/en-us/articles/200526207-Using-Projects)
setup exactly like this repo, which is done if you followed the
preceding code.

``` r
source('prep/DownloadData.r')
```

# Installing Stan

`stan` takes a little extra care to install, so please follow the
instructions
<https://github.com/stan-dev/rstan/wiki/RStan-Getting-Started#installation>.


## Compiler warnings

Run this to create a MAKEVARS file: 

```r
dotR <- file.path(Sys.getenv("HOME"), ".R")
if (!file.exists(dotR)) dir.create(dotR)
MAKEVARS <- file.path(dotR, "Makevars")
if (!file.exists(MAKEVARS)) file.create(MAKEVARS)
```

Then see instructions at 

http://mc-stan.org/misc/warnings#compiler-warnings


# MCMC interactive demo

https://chi-feng.github.io/mcmc-demo/app.html
