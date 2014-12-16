# see http://ramnathv.github.io/slidify/index.html
# http://thiagosilva.wordpress.com/2013/02/17/installing-slidify-on-a-windows-machine/
# NOTE: DOESN'T SEEM TO WORK IN IE - USE FIREFOX INSTEAD!!!!!!!!!!!!!!!!!!!!!!!!

# install RtoolsXX.exe
# http://cran.r-project.org/bin/windows/Rtools/

# step 1. install
#install.packages("devtools")
#library(devtools)
#install_github('ramnathv/slidify')
#install_github('ramnathv/slidifyLibraries')

# step 2. author deck
library(slidify)
getwd()
setwd(getwd())
author("SampleSizeDeck")

# step 3. edit deck (index.Rmd file)

# step 4. generate deck
slidify("C:/Users/Bryan/Desktop/Coursera/Course 9 - data products/Project/SampleSize Slidify/SampleSizeDeck/index.Rmd")

#library(knitr)
browseURL("SampleSizeDeck/index.html")

# step 5. publish deck

#Publishing to Github is as easy as running publish from inside the slide directory. You need to have git installed on your system, create an empty github repo and ssh access set up for github.

#publish(user = "wrightbr", repo = "DS9_Slidify")

#Rpubs
#publish(title = 'mytitle', 'index.html', host = 'rpubs')






