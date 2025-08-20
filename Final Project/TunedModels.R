load("/Users/angelalcantara/Downloads/PSTAT 131/Final Project/tuning_environment.RData")
set.seed(545)

# Tuning the models
## Random forest
rf_tune_res <- tune_grid(
  rf_workflow,
  resamples = spotify_folds,
  grid = rf_grid
)
saveRDS(rf_tune_res, "rf_tuned.rds")

## K-nearest neighbors
knn_tune <- tune_grid(
knn_workflow,
resamples = spotify_folds,
grid = knn_grid
)
saveRDS(knn_tune, "knn_tuned.rds")

## Boosted Trees 
boosted_tune_res <- tune_grid(
boosted_workflow,
resamples = spotify_folds,
grid = boosted_grid
)
saveRDS(boosted_tune_res, "boosted_tuned.rds")




