eegstats

# Project
I am going to create the R package "eegstats" that will allow the user to perform statistical EEG analyses in R. The structure of this project is hierarchical. First, ERP and ERSP analyes will be introduced and second, those outputs will be used for more complex statistical analyses.The focal point of interest consitutes event - related potentials (ERPs) and event - related spectral dynamics (ERSPs). Thus, I will develop functions to analye both. For now, the package consists of six functions and their documentation:

ERP
 1. ind_average_erp: allows users to compute the individual averaged ERP signal.
 2. ind_average_erp_plot: allows users to plot the individual averaged ERP signal.
 3. grand_average_erp: allows users to compute the grand averaged ERP signal.
 4. grand_average_erp_plot: allows users to plot the grand averaged ERP signal.
 
ERSP
 5.grand_average_ersp: allows users to compute the grand averaged ERSP.
 6.grand_average_ersp_plot: allows users to plot the grand averaged ERSP as a time - frequency plot.

These ERP / ERSP analyses were the primary goal of this package. Next, I will develop functions that incorporate the ERPs and ERSPs. More and more research focuses on the relation between ERPs and ERSPs to infer spectral dynamics (see Yordanova et al., 2001). I will develop a function that allows users to do this. For instance, one could enter a certain ERP (e.g. P3) and a certain ERSP of interest (e.g. Alpha: 8 - 12 Hz.). The function cor_erp_ersp will correlate those features and visualize the correlations in a correlation table.

 7. correlate_erp_ersp 
 
Moreover, I aim to develop a function that applies cluster based permutation statistics to the ERSP data. The function should encircle those time / frequencies where the power between two different conditions is significantly different while controlling for multiple comparisons.

If there is time left, I could implement other functions, such as baseline and outlier correction. However, for the ERP and ERSP analyses I assume that all input data are already pre-processed. Moreover, the developed ERP / ERSP functions are more unique and to the best of my knowledge there are no existing packages in R that perform such ERP / ERSP correlation analyses. 

Depending on the progress of this project, I plan to implement more sophisticated analysis techniques, such as k means clustering and cluster based permutation statistics.

EEG analyses in R have long been neglected so it's finally time to program those as "the next step" (pun intended).

# Code
All functions will be programmed in R.

Existing plotting functions from the widely used "eeglab" package in Matlab will be adapted. For the implementation of the statistical analysis techniques, I aim to apply a new method of cluster based permutation statistics in R. Recent publications show its benefits and application in EEG data (Beste et al., 2018).

# Literature

Beste, C., Kaping, D., & Tzvetanov, T. (2018). Extension of the non-parametric cluster-based time-frequency statistics to the full time windows and to single condition tests. arXiv preprint arXiv:1801.09372.

Yordanova, J., Kolev, V., & Polich, J. (2001). P300 and alpha event-related desynchronization (ERD). Psychophysiology, 38(1), 143-152.
