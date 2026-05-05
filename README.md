# GloBIAnalysis

Contributors: Beatrice Tauer, Meghan Gram-Dinger, Nelle Feliciano

## Description

Our package “GloBIAnalysis” centers around summarizing, analyzing and visualizing the Global Biotic Interactions curated bee-plant datasets (https://zenodo.org/records/18303036). Interactions between insects and plants play an important role in the maintenance of ecological communities and the overall health of ecosystems. These 3 related datasets examine the interactions between bees and plants across a range of species and geographic distributions. The variables in the data include the taxonomic identity of various bee and plant species, the location coordinates where the data was collected, and the types of interactions observed. The tasks that can be acomplished with this package include displaying summary statistics for different variables, creating visualizations to explore the dataset, and identifying trends in the data using statistical methods. 

The overall goal of the GloBIAnalysis package is to provide a user-friendly interface for exploring this data. The methods included in the package allow the user to explore and visualize trends in the data without needing to have an in-depth understanding of the data structure and metadata. Some of the specific functions that can be used to complete the overall tasks of our package include calculating summary statistics for the bee and plant species and displaying the summary in an easy-to-understand format (`summaryBee()` and `summaryPlant()`). Visualizations can also be used to explore trends in the dataset, and can be easily accomplished using functions that plot the presence of different species across various types of interactions (`visBeeSpecies()` and `visPlantSpecies()`). Finally, users can easily run an ANOVA test to find out if bee and plant endemicity has a significant effect on the interactions that are taking place (`anovaPop()`). 

## Functionality

Package tasks and functions used to accomplish tasks:

Summary of bee and plant species composition (uses all 3 datasets)  
1. Summary function for bees  
2. Summary function for plants  
3. Summary function for geographical distributions  
4. Summary function for types of interactions  
5. Summary function for the data set

Visualization of bee-plant interactions (uses curated dataset)  
1. Types and counts of bee-plant interactions  
2. Distribution of bee species in interactions  
3. Distribution of plant species in interactions  
4. Interactive map of where bee-plant interactions occur  

Trends in bee-plant interactions (uses curated dataset)  
1. ANOVA analysis of bee and plant population dynamics  

## Installation

To install this package in R, run the following lines of code:
`install.packages("GloBIAnalysis")`  
`library(GloBIAnalysis)`

## Example 

To see an interactive map of where bee-plant interactions are taking place: 
`visInteractMap()` 
