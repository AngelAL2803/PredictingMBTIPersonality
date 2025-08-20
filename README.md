<h1>Predicting MBTI Personality Types from Spotify Playlists</h1>

<h2>Description</h2>
This was a final project for a machine learning course where I got to use the skills I learned in this course to do my own machine learning project. Therefore, this project applies <b>machine learning</b> to predict <b>MBTI personality types</b> using audio features from Spotify playlists. The dataset includes ~4,000 playlists and 49 predictors, such as <b>danceability, energy, valence, and instrumentalness</b>.

The goal is to explore whether music preferences can serve as indicators of personality and to compare different ML approaches for multiclass classification.

In the Final Project folder, there is a file named `spotify_codebook.rtf` which provides the name and descriptions for the variables in the dataset.
<br />


<h2>Languages and Utilities Used</h2>

- <b>R (R Markdown for reporting & visualization)</b>
- <b>RStudio</b>
- <b>Git & GitHub for version control</b>
- <b>Pandoc / knitr for reproducible reporting</b>
- <b>Kaggle (dataset source)</b>

<h2>Dataset</h2>

- <b>Source:</b> [Spotify MBTI Playlist Dataset (Kaggle)](https://www.kaggle.com/datasets/xtrnglc/spotify-mbti-playlists)
- <b>Size:</b> ~4,000 playlists, 49 predictors (numeric audio features & categorical variables)
- <b>Target Variable:</b> MBTI personality type (16 classes)

<h2>Methods</h2>

- <b>Exploratory Data Analysis</b>
  - Distribution of MBTI types
  - Correlations between audio features
  - Visualizations of high-dimensional relationships
- <b>Feature Engineering</b>
  - Normalization and scaling of numeric features
  - Encoding categorical predictors
  - Train/test splits
- <b>Machine Learning Models</b>
  - Linear regression (baseline)
  - Ridge/Lasso/Elastic Net
  - Polynomial Regression
  - k-Nearest Neighbors (KNN)
  - Random Forest
  - Gradient Boosted Trees
- <b>Model Evaluation</b>
  - Accuracy vs. baseline random chance (25%)
  - Cohen's Kappa for classification agreement
  - ROC-AUC for model discrimination
  - Confusion matrix for strengths & weaknesses across MBTI pairs
 
<h2>Results</h2>

- <b>Best Model:</b> Random Forest
- <b>Test Accuracy:</b> ~49% (vs. 25% random baseline)
- <b>Cohen's Kappa:</b> 0.29 (moderate agreement beyond chance)
- <b>ROC-AUC:</b> 0.721 (multiclass macro-average)

While prediction is challenging due to 16 imbalanced classes, results demonstrate that <b>music data contains meaningful signals of personality</b>.

<!--
 ```diff
- text in red
+ text in green
! text in orange
# text in gray
@@ text in purple (and bold)@@
```
--!>
