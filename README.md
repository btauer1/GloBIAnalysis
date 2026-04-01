Package Name: GloBIAnalysis

Contributors: Beatrice Tauer, Meghan Gram-Dinger, Nelle Feliciano

Our package “GloBIAnalysis” will center around summarizing, analyzing and visualizing the Global Biotic Interactions curated bee-plant datasets (https://zenodo.org/records/18303036). Interactions between insects and plants play an important role in the maintenance of ecological communities and the overall health of ecosystems. These 3 related datasets examine the interactions between bees and plants across a range of species and geographic distributions. The variables in the data include the taxonomic identity of various bee and plant species, the location coordinates where the data was collected, and the types of interactions observed. The tasks that our package will accomplish include displaying summary statistics for both the plants and bees sampled, creating visualizations to explore the dataset, and identifying trends in the data using statistical methods. 

The overall goal of our packages is to provide a user-friendly interface for exploring this data. The methods included in the package will allow the user to explore and visualize trends in the data without needing to have an in-depth understanding of the data structure and metadata. Some of the specific functions that will be used to complete the overall tasks of our package include calculating summary statistics for the bee and plant species included and displaying the summary in an easy-to-understand format. Visualizations will be used to explore trends in the dataset, and this will be accomplished using functions that plot the presence of different species across various types of interactions. 

Package tasks and functions used to accomplish tasks:

Summary of bee and plant species composition (uses all 3 datasets)
1. Summary function for bees
2. Summary function for plants
3. Summary function for geographical distributions
4. Summary function for types of interactions

Visualization of bee-plant interactions (uses curated dataset)
1. Types and counts of bee-plant interactions
2. Distribution of bee species in interactions
3. Distribution of plant species in interactions

Trends in bee-plant interactions (uses bee-plant interactions summary data)
1. ANOVA analysis of bee and plant population dynamics
