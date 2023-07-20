
folder <- '/scratch/ligen_root/ligen0/wangmk/LOCOM_simulation_test/binary_Y_only/'
foldchanges <- seq(1.5, 4.5, 0.5)

specific_files <- list.files(file.path(folder, sprintf("%.1f", foldchanges[6])))

get_id <- function(fullname){
  fname_components <- strsplit(fullname, split="_")[[1]]
  id <- gsub("replicate", "", fname_components[10])
  return(as.integer(id))
}

all_ids <- seq(1, 100)

available_ids <- sapply(specific_files, get_id)
available_ids <- sort(available_ids) |> unique()


absent_ids <- setdiff(all_ids, available_ids)

example <- read.table(file.path(folder, sprintf("%.1f", foldchanges[6]),
                                specific_files[74]))


