## PlotRandom.R
##
## Create fxn that will gen random sample of norm deviates, plot hist & provide other context

## Last class -->
plotRandomD <- function(numpts=100) {
  histo(rnorm(numpts))
}

plotRandomD()

###########################
## Allowing for more flexibility

PlotRandomNormals <- function(pts=100, mu=24, sigma=3, numbins=15,
                              title= "My Histogram, Oct 14 2022", # adds title
                              meanColor="red",
                              seed=8675309) 
  {
  set.seed(seed)
  rand_x <- (rnorm(pts, mean=mu, sd=sigma)) # sets values = to "inputted" values
  mean_x <- mean(rand_x)
  hist(rand_x, breaks=numbins, main=title)
  abline(v=mean_x, col=meanColor)
  list(Mean_X=mean_x,
       StdDev_x=sd(rand_x),
       RandomValues = rand_x)
}

PlotRandomNormals(pts=10000, mu=99, sigma=100)

PlotRandomNormals()

