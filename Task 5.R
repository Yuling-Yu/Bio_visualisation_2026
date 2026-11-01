### Task 5 - Using R example datasets ###

# 1. Use the R internal CO2 dataset (“data(CO2)”).
data("CO2")

# 2. Describe briefly the content of the CO2 dataset using the help function.
help("CO2")

# 3. What is the average and median CO2 uptake of the plants from Quebec and Mississippi?
aggregate(uptake ~ Type, data = CO2,
          FUN = function(x) c(mean = mean(x),
                              median = median(x)))
# Quebec, mean=33.54286, median=37.15000
# Mississippi, mean=20.88333, median=19.30000

# 4. [Optional] In the “airway” example data from Bioconductor, how many genes are 
#   expressed in each sample? How many genes are not expressed in any sample?

# Install Bioconductor
install.packages("BiocManager")
BiocManager::install()
BiocManager::install("GenomicRanges")
library(GenomicRanges)
BiocManager::version()

#Data "airway"
BiocManager::install("airway")
BiocManager::install("SummarizedExperiment")
library(airway)
library(SummarizedExperiment)
data("airway")

#Calculation
counts <- assay(airway)
expre <- colSums(counts > 0)
expre
#SRR1039508 SRR1039509 SRR1039512 SRR1039513 SRR1039516 SRR1039517 SRR1039520 SRR1039521 
#24633      24527      25699      23124      25508      25998      24662      23991

noexpre <- sum(rowSums(counts) == 0)
noexpre
# 30208

### End of the program ###