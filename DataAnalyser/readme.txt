
This program contains two .R scripts. The first (SpikeRemovalScript_V2) complete multiple tasks:

- Removes data spikes.
- Interpolates the data, removing duplicate data.
- Plots Timer Series, Acceleration and Velocity graphs into a folder.
- Creates an RMS data frame to perform ANOVA  analysis on.

The second script (ANOVAScript) goes through each RMS value column for each scenario and writes the ANOVA results to word files per task.