eegstats

# Project
<<<<<<< Updated upstream
I am going to create the R package "eegstats" that will allow the user to perform statistical EEG analyses in R.

First, I will implement basic functions, such as:
- loading in the data file
- baseline correction
- outlier correction
=======
I am going to create the R package "eegstats" that will allow the user to perform statistical EEG analyses in R. The structure of this project is hierarchical. First, ERP and ERSP analyes will be introduced and second, those outputs will be used for more complex statistical analyses.The focal point of interest consitutes event - related potentials (ERPs) and event - related spectral dynamics (ERSPs). Thus, I will develop functions to analye both. 

ERP
 1. compute_ind_average_erp: allows users to compute the individual averaged ERP signal.
 2. plot_ind_average_erp: allows users to plot the individual averaged ERP signal.
 3. compute_grand_average_erp: allows users to compute the grand averaged ERP signal.
 4. plot_grand_average_erp: allows users to plot the grand averaged ERP signal.
 
ERSP
 5.compute_grand_average_ersp: allows users to compute the grand averaged ERSP.
 6.plot_grand_average_ersp: allows users to plot the grand averaged ERSP as a time - frequency plot.
>>>>>>> Stashed changes

As a second step, I aim to implement functions that allow the user to create time - frequency plots based upon pre-processed data.

Depending on the progress of this project, I plan to implement more sophisticated analysis techniques, such as cluster based permutation statistics.

EEG analyses in R have long been neglected so it's finally time to implement those as "the next step" (pun intended).


# Code
All functions will be programmed in R.

If there is time left, I aim to apply a new method of cluster based permutation statistics in R. Recent publications show its benefits and application in EEG data (Beste et al., 2018).

Beste, C., Kaping, D., & Tzvetanov, T. (2018). Extension of the non-parametric cluster-based time-frequency statistics to the full time windows and to single condition tests. arXiv preprint arXiv:1801.09372.
<<<<<<< Updated upstream
=======

Delorme, A., & Makeig, S. (2004). EEGLAB: an open source toolbox for analysis of single-trial EEG dynamics including independent component analysis. Journal of neuroscience methods, 134(1), 9-21.

Yordanova, J., Kolev, V., & Polich, J. (2001). P300 and alpha event-related desynchronization (ERD). Psychophysiology, 38(1), 143-152.
>>>>>>> Stashed changes
