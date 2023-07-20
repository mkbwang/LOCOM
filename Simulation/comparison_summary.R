
rm(list=ls())

scenario <- "binary_Y_only"
beta <- 2.5

folder <- file.path('/scratch/ligen_root/ligen0/wangmk/LOCOM_simulation_test',
          scenario, sprintf("%.1f", beta))

results <- list()

for (i.seed in 1:100){
  filename.otu <- paste("S_", scenario, "_cau", 1, "_n", 100, "_filter", 0.2, "_fdr", 0.1, 
                        "_beta", beta, "_replicate", i.seed, "_otu.txt", sep = "")
  performance_df <- read.table(file.path(folder, filename.otu))
  performance_df_subset <- performance_df[seq(1, 5), c(2, 4)]
  
}
performance_subset <- results[[1]][seq(1, 5), c(2, 4)]
performance_subset_flatten <- performance_subset |> as.vector()
performnce_subset_flatten_df <- data.frame(Power=performance_subset$sen,
                                           FDR=performance_subset$fdr,
                                           Method=rownames(performance_subset),
                                           ID)
