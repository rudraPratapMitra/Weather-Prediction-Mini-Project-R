{
  # Load libraries
  library(tidyverse)
  library(caret)
  library(e1071)
  
  # Load data
  seattle_weather <- read_csv("C:\\Users\\KIIT\\Desktop\\DA-WEATHER PREDICTION MINI PROJECT\\Weather - Weather.csv")
  
  # Data preprocessing
  seattle_weather <- seattle_weather %>%
    mutate(date = as.Date(date, "%m/%d/%Y")) %>%
    select(date,precipitation,temp_max,temp_min,wind,weather) %>%
    na.omit()
  
  # Encode categorical feature
  seattle_weather$weather <- factor(seattle_weather$weather)
  
  # Split data into training and testing sets
  set.seed(123)
  train_index <- createDataPartition(seattle_weather$weather, p = 0.7, list = FALSE)
  train_data <- seattle_weather[train_index, ]
  test_data <- seattle_weather[-train_index, ]
  
  # Train Naive Bayes model
  nb_model <- naiveBayes(weather ~ ., data = train_data)
  
  # Predict weather for test set
  predicted_weather <- predict(nb_model, newdata = test_data[,-6])
  
  # Evaluate model performance
  cm <- confusionMatrix(predicted_weather, test_data$weather, as.table = TRUE)
  
  # Plot confusion matrix
  ggplot(data = as.data.frame(cm$table), aes(x = Prediction, y = Reference, fill = Freq)) +
    geom_tile() +
    scale_fill_gradient(low = "white", high = "steelblue") +
    geom_text(aes(label = sprintf("%1.0f", Freq)), vjust = 0.5) +
    labs(x = "Predicted", y = "Actual", fill = "Frequency") +
    theme_bw()
  
}