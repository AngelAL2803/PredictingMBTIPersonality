<h1>Predicting MBTI Personality Types from Spotify Playlists</h1>

<h2>Description</h2>
This was a final project for a machine learning course where I applied <b>supervised machine learning</b> methods to predict <b>MBTI personality types</b> from Spotify playlists. The dataset, sourced from Kaggle, contains ~4,000 playlists with 49 predictors, including <b>audio features</b> (danceability, energy, valence, instrumentalness) and categorical variables.

The project explores whether music preferences contain meaningful signals of personality and compares different machine learning approaches for multiclass classification across 16 MBTI categories.
<br />


<h2>Languages and Utilities Used</h2>

- <b>R (R Markdown for reporting & visualization)</b>
- <b>RStudio</b>
- <b>Git & GitHub for version control</b>
- <b>tidymodels</b>, <b>dplyr</b>, <b>ggplot2</b>, <b>randomForest</b>, <b>xgboost</b> (R packages)
- <b>Kaggle (dataset source)</b>

<h2>Dataset</h2>

- <b>Source:</b> [Spotify MBTI Playlist Dataset (Kaggle)](https://www.kaggle.com/datasets/xtrnglc/spotify-mbti-playlists)
- <b>Size:</b> ~4,000 playlists, 49 predictors (numeric audio features & categorical variables)
- <b>Target Variable:</b> MBTI personality type (16-class categorical outcome)

<h2>Methods</h2>

- <b>Exploratory Data Analysis</b>
  - Distribution of MBTI types
  - Correlations between audio features
  - Visualizations of high-dimensional relationships
- <b>Feature Engineering</b>
  - Normalization and scaling of numeric features
  - Encoding categorical predictors
  - Train/test split creation
- <b>Machine Learning Models</b>
  - Linear regression (baseline)
  - Ridge,Lasso,Elastic Net
  - Polynomial Regression
  - k-Nearest Neighbors (KNN)
  - Random Forest
  - Gradient Boosted Trees
- <b>Model Evaluation</b>
  - Accuracy compared to random baseline (25%)
  - Cohen's Kappa for classification agreement
  - ROC-AUC for model discrimination
  - Confusion matrix to assess strengths & weaknesses across MBTI function pairs
 
<h2>Results</h2>

- <b>Best Model:</b> Random Forest
- <b>Test Accuracy:</b> ~49% (vs. 25% random baseline)
- <b>Cohen's Kappa:</b> 0.29 (moderate agreement beyond chance)
- <b>ROC-AUC:</b> 0.721 (macro-average across classes)

While prediction is challenging due to 16 imbalanced classes, results demonstrate that <b>music data contains meaningful signals of personality</b>.

<h2>Results Visualization</h2>

- <b>EDA Visuals:</b>
  - Histograms showed class imbalance across the 16 MBTI types (some personality types heavily underrepresented).
  - Correlation heatmaps of audio features (e.g., energy vs. loudness) revealed meaningful clustering of variables.
  - 2D feature space plots highlighted how playlists grouped by MBTI functions (e.g., Introversion vs. Extraversion).
- <b>Model Diagnostics:</b>
  - <b>Confusion matrices</b> visualized where classifiers confused similar MBTI types (e.g., NT vs. NF types).
  - <b>ROC curves (macro-averaged)</b> illustrated discriminative ability across multiple classes.
  - <b>Comparison bar charts</b> showed relative performance of models on accuracy and Cohen’s Kappa.
- <b>Final Model Insights:</b>
  - <b>Random Forest feature importance plots</b> ranked predictors like danceability, energy, and valence as most influential.
  - Visual inspection confirmed the model captured personality-related signals embedded in musical features, even if prediction remained challenging.

<h2>Project Structure</h2>

- <b>MBTI.Rmd</b> → main analysis and modeling code
- <b>MBTI.html</b> → full report with results and visualizations (for webpage)
- <b>MBTI.pdf</b> → full report with results and visualizations (pdf)
- <b>spotify_codebook.rtf</b> → dataset variable descriptions
- <b>Data/combined_mbti_df.csv</b> → cleaned dataset used for modeling
- <b>Data/archive/</b> → raw dataset files from Kaggle
- <b>TunedModels.R</b> → R script saving/loading tuned models
- <b>rf_tuned.rds, boosted_tuned.rds, knn_tuned.rds</b> → serialized tuned models

<!--
 ```diff
- text in red
+ text in green
! text in orange
# text in gray
@@ text in purple (and bold)@@
```
--!>
