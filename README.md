# Weather-Prediction-Mini-Project-R
This weather prediction mini project serves as a practical demonstration of applying the Naive Bayes algorithm for weather forecasting. By analyzing historical data and evaluating the model's performance, it provides insights into the accuracy of predictions and potential applications in real-world scenarios. Feel free to explore the code, experiment with different models, and contribute to further enhance the project's capabilities.

The project includes the following steps:

1. Data Loading and Preprocessing:
   - The historical weather data is loaded from the "Weather - Weather.csv" file.
   - The data is preprocessed by converting the date column to the appropriate format and handling missing values.
   - Relevant columns, including date, precipitation, maximum temperature, minimum temperature, wind, and weather, are selected for analysis.

2. Categorical Feature Encoding:
   - The categorical feature "weather" is encoded as a factor to prepare it for model training.

3. Data Splitting:
   - The dataset is split into training and testing sets using a 70:30 ratio.
   - The 'createDataPartition' function from the 'caret' library is used to ensure stratified sampling.

4. Model Training:
   - A Naive Bayes model is trained using the training dataset.
   - The 'naiveBayes' function from the 'e1071' library is utilized for model training, with the target variable being the weather conditions.

5. Weather Prediction:
   - The trained model is used to predict the weather conditions for the test dataset.
   - The 'predict' function is applied to the new data, excluding the target variable.

6. Model Evaluation:
   - The predicted weather values are compared to the actual weather values in the test dataset.
   - A confusion matrix is generated using the 'confusionMatrix' function from the 'caret' library.
   - The confusion matrix provides insights into the model's performance, including accuracy, precision, recall, and F1-score.

7. Visualization:
   - A visualization of the confusion matrix is created using the 'ggplot2' library.
   - The confusion matrix is represented as a heatmap, with color indicating the frequency of correct and incorrect predictions.
   - The visualization helps in understanding the distribution of predicted and actual weather conditions.

<img width="507" alt="weatherPredictionGithub3" src="https://github.com/rudraPratapMitra/Weather-Prediction-Mini-Project-R/assets/135310293/fc414f59-baf7-4dbf-ae94-aa7b02b6fd7c">
