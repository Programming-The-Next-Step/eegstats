eegstats

# Project
I am going to create the R package "eegstats" that will allow the user to perform statistical EEG analyses in R.

First, I will implement basic functions, such as:
- loading in the data file
- baseline correction
- outlier correction


As a second step, I aim to implement functions that allow the user to create time - frequency plots based upon pre-processed data.

Depending on the progress of this project, I plan to implement more sophisticated analysis techniques, such as k means clustering and cluster based permutation statistics.

EEG analyses in R have long been neglected so it's finally time to implement those as "the next step" (pun intended).


# Code
All functions will be programmed in R.

Existing plotting functions from the widely used "eeglab" package in Matlab will be adapted. For the implementation of the statistical analysis techniques, I aim to apply a method of cluster based permutation statistics in R. Recent publications show its benefits and application in EEG data (Beste et al., 2018).

Beste, C., Kaping, D., & Tzvetanov, T. (2018). Extension of the non-parametric cluster-based time-frequency statistics to the full time windows and to single condition tests. arXiv preprint arXiv:1801.09372.
