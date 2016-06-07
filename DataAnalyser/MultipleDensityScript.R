#This plots two or more density plots overlapping each other so we can see the difference in distribution.
plot.multi.dens <- function(s)
{
  junk.x = NULL
  junk.y = NULL
  for(i in 1:length(s))
  {
    junk.x = c(junk.x, density(s[[i]])$x)
    junk.y = c(junk.y, density(s[[i]])$y)
  }
  xr <- range(junk.x)
  yr <- range(junk.y)
  plot(density(s[[1]]), xlim = xr, ylim = yr, main = "")
  for(i in 1:length(s))
  {
    lines(density(s[[i]]), xlim = xr, ylim = yr, col = i)
  }
}

#Usage:
x = RMS_NVRTask3_Acceleration[, c(3)]
y = RMS_NVRWTask3_Acceleration[, c(3)]

plot.multi.dens(list(x, y))
