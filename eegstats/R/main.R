
#' GA_Plot
#'
#' @description  The function \emph{GA_Plot} computes the grand average ERP signal for all conditions and plots it.
#' @param my_erpdata Input Matrix with shape: subject x condition x time x electrodes.
#' @param electrode A numeric value that specifies the number of electrode that should be plotted
#'
#'

#' @details For more details, see Wikipedie page: \href{https://sccn.ucsd.edu/wiki/I.6:_Data_Averaging}{article}

#' @return A plot with the Grand Average.

#' @export GA_Plot

GA_Plot <- function(my_erpdata, electrode = 6) {

  cond <- unique(my_erpdata[,2])

  subjects <- unique(my_erpdata[,1])

  # compute grand average (GA):
  GA <- array(NA, dim = c(length(unique(my_erpdata[,1])),length(unique(my_erpdata[,2])),length(unique(my_erpdata[,3]))))

  for (s in 1:length(unique(my_erpdata[,1]))) { # all subjects

    for (c in 1:length(unique(my_erpdata[,2]))) { # all conditions

      GA[s,c,] <- my_erpdata[my_erpdata[,1] == subjects[s] & my_erpdata[,2] == cond[c],electrode] # compute GA

    }
  }

  # plot GA
  colours <- c('red', 'green', 'blue', 'black', 'green')
  for (i in 1:length(cond)) {

    if (i ==1) {
      plot(colMeans(GA[,i,]), type = "l", col = colours[i], ylim = c(-15,15), ylab = 'Amplitude', xlab = 'Time (ms)', xaxt = "n")
    }
    if (i >= 2) {
      lines(colMeans(GA[,i,]), col = colours[i])
    }
  }
  legend('topleft', legend=cond, col=colours[1:i], lty=1, cex=0.8)

  # add correct timepoints (as in original data)
  timepoints <- my_erpdata[my_erpdata[,1] == 'S1' & my_erpdata[,2] == 'Negative',3]
  desired_timepoints <- seq(from = timepoints[1], to = timepoints[length(timepoints)], by = 400)

  index_timepoints <- c()
  for (i in 1:length(desired_timepoints)) {
    j <- desired_timepoints[i]
    index_timepoints[i] <- which(timepoints == j)
  }
  axis(1, at = index_timepoints, labels = desired_timepoints)
}



#' LoadingDate
#'
#' @description  The function \emph{GA_Plot} computes the grand average ERP signal for all conditions and plots it.
#'
#' @export LoadingData
#'
LoadingDate <- function(my_erpdata) {
  print('hi')
}
