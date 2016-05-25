#Files which the ANOVA results will be written to.
AccelerationDocument <- "C:/Users/Jack/Desktop/Acceleration_ANOVA.doc"
VelocityDocument <- "C:/Users/Jack/Desktop/Velocity_ANOVA.doc"
TimeSeriesDocument <- "C:/Users/Jack/Desktop/TimeSeries_ANOVA.doc"

#Acceleration ANOVA
for(q in 1:3)
{
  #Task 1 Acceleration Datasets
  Task1Dataset_NVR <- RMS_NVRTask1_Acceleration[, c(j)]
  Task1Dataset_VR <- RMS_VRTask1_Acceleration[, c(j)]
  Task1Dataset_NVRW <- RMS_NVRWTask1_Acceleration[, c(j)]
  
  #Task 2 Acceleration Datasets
  Task2Dataset_NVR <- RMS_NVRTask2_Acceleration[, c(j)]
  Task2Dataset_VR <- RMS_VRTask2_Acceleration[, c(j)]
  Task2Dataset_NVRW <- RMS_NVRWTask2_Acceleration[, c(j)]
  
  #Task 3 Acceleration Datasets
  Task3Dataset_NVR <- RMS_NVRTask3_Acceleration[, c(j)]
  Task3Dataset_VR <- RMS_VRTask3_Acceleration[, c(j)]
  Task3Dataset_NVRW <- RMS_NVRWTask3_Acceleration[, c(j)]
  
  #Task 1 ANOVA
  TestName <- "NVR Task 1 Acceleration ~ VR Task 1 Aceleration"
  capture.output(TestName, file = AccelerationDocument, append = TRUE)
  capture.output(summary(aov(Task1Dataset_NVR ~ Task1Dataset_VR)), file = AccelerationDocument, append = TRUE)
  cat("\n\n", file = AccelerationDocument, append = TRUE)
  
  TestName <- "NVR Task 1 Acceleration ~ NVRW Task 1 Aceleration"
  capture.output(TestName, file = AccelerationDocument, append = TRUE)
  capture.output(summary(aov(Task1Dataset_NVR ~ Task1Dataset_NVRW)), file = AccelerationDocument, append = TRUE)
  cat("\n\n", file = AccelerationDocument, append = TRUE)
  
  TestName <- "NVRW Task 1 Acceleration ~ VR Task 1 Aceleration"
  capture.output(TestName, file = AccelerationDocument, append = TRUE)
  capture.output(summary(aov(Task1Dataset_NVRW ~ Task1Dataset_VR)), file = AccelerationDocument, append = TRUE)
  cat("\n\n", file = AccelerationDocument, append = TRUE)
  
  #Task 2 ANOVA
  TestName <- "NVR Task 2 Acceleration ~ VR Task 2 Aceleration"
  capture.output(TestName, file = AccelerationDocument, append = TRUE)
  capture.output(summary(aov(Task2Dataset_NVR ~ Task2Dataset_VR)), file = AccelerationDocument, append = TRUE)
  cat("\n\n", file = AccelerationDocument, append = TRUE)
  
  TestName <- "NVR Task 2 Acceleration ~ NVRW Task 2 Aceleration"
  capture.output(TestName, file = AccelerationDocument, append = TRUE)
  capture.output(summary(aov(Task2Dataset_NVR ~ Task2Dataset_NVRW)), file = AccelerationDocument, append = TRUE)
  cat("\n\n", file = AccelerationDocument, append = TRUE)
  
  TestName <- "NVRW Task 2 Acceleration ~ VR Task 2 Aceleration"
  capture.output(TestName, file = AccelerationDocument, append = TRUE)
  capture.output(summary(aov(Task2Dataset_NVRW ~ Task2Dataset_VR)), file = AccelerationDocument, append = TRUE)
  cat("\n\n", file = AccelerationDocument, append = TRUE)
  
  #Task 3 ANOVA
  TestName <- "NVR Task 3 Acceleration ~ VR Task 3 Aceleration"
  capture.output(TestName, file = AccelerationDocument, append = TRUE)
  capture.output(summary(aov(Task3Dataset_NVR ~ Task3Dataset_VR)), file = AccelerationDocument, append = TRUE)
  cat("\n\n", file = AccelerationDocument, append = TRUE)
  
  TestName <- "NVR Task 3 Acceleration ~ NVRW Task 3 Aceleration"
  capture.output(TestName, file = AccelerationDocument, append = TRUE)
  capture.output(summary(aov(Task3Dataset_NVR ~ Task3Dataset_NVRW)), file = AccelerationDocument, append = TRUE)
  cat("\n\n", file = AccelerationDocument, append = TRUE)
  
  TestName <- "NVRW Task 3 Acceleration ~ VR Task 3 Aceleration"
  capture.output(TestName, file = AccelerationDocument, append = TRUE)
  capture.output(summary(aov(Task3Dataset_NVRW ~ Task3Dataset_VR)), file = AccelerationDocument, append = TRUE)
}

#Velocity ANOVA
for(r in 1:3)
{
  #Task 1 Velocity Datasets
  Task1Dataset_NVR <- RMS_NVRTask1_Velocity[, c(r)]
  Task1Dataset_VR <- RMS_VRTask1_Velocity[, c(r)]
  Task1Dataset_NVRW <- RMS_NVRWTask1_Velocity[, c(r)]
  
  #Task 2 Velocity Datasets
  Task2Dataset_NVR <- RMS_NVRTask2_Velocity[, c(r)]
  Task2Dataset_VR <- RMS_VRTask2_Velocity[, c(r)]
  Task2Dataset_NVRW <- RMS_NVRWTask2_Velocity[, c(r)]
  
  #Task 3 Velocity Datasets
  Task3Dataset_NVR <- RMS_NVRTask3_Velocity[, c(r)]
  Task3Dataset_VR <- RMS_VRTask3_Velocity[, c(r)]
  Task3Dataset_NVRW <- RMS_NVRWTask3_Velocity[, c(r)]
  
  #Task 1 ANOVA
  TestName <- "NVR Task 1 Velocity ~ VR Task 1 Velocity"
  capture.output(TestName, file = VelocityDocument, append = TRUE)
  capture.output(summary(aov(Task1Dataset_NVR ~ Task1Dataset_VR)), file = VelocityDocument, append = TRUE)
  cat("\n\n", file = VelocityDocument, append = TRUE)
  
  TestName <- "NVR Task 1 Velocity ~ NVRW Task 1 Velocity"
  capture.output(TestName, file = VelocityDocument, append = TRUE)
  capture.output(summary(aov(Task1Dataset_NVR ~ Task1Dataset_NVRW)), file = VelocityDocument, append = TRUE)
  cat("\n\n", file = VelocityDocument, append = TRUE)
  
  TestName <- "NVRW Task 1 Velocity ~ VR Task 1 Velocity"
  capture.output(TestName, file = VelocityDocument, append = TRUE)
  capture.output(summary(aov(Task1Dataset_NVRW ~ Task1Dataset_VR)), file = VelocityDocument, append = TRUE)
  cat("\n\n", file = VelocityDocument, append = TRUE)
  
  #Task 2 ANOVA
  TestName <- "NVR Task 2 Velocity ~ VR Task 2 Velocity"
  capture.output(TestName, file = VelocityDocument, append = TRUE)
  capture.output(summary(aov(Task2Dataset_NVR ~ Task2Dataset_VR)), file = VelocityDocument, append = TRUE)
  cat("\n\n", file = VelocityDocument, append = TRUE)
  
  TestName <- "NVR Task 2 Velocity ~ NVRW Task 2 Velocity"
  capture.output(TestName, file = VelocityDocument, append = TRUE)
  capture.output(summary(aov(Task2Dataset_NVR ~ Task2Dataset_NVRW)), file = VelocityDocument, append = TRUE)
  cat("\n\n", file = VelocityDocument, append = TRUE)
  
  TestName <- "NVRW Task 2 Velocity ~ VR Task 2 Velocity"
  capture.output(TestName, file = VelocityDocument, append = TRUE)
  capture.output(summary(aov(Task2Dataset_NVRW ~ Task2Dataset_VR)), file = VelocityDocument, append = TRUE)
  cat("\n\n", file = VelocityDocument, append = TRUE)
  
  #Task 3 ANOVA
  TestName <- "NVR Task 3 Velocity ~ VR Task 3 Velocity"
  capture.output(TestName, file = VelocityDocument, append = TRUE)
  capture.output(summary(aov(Task3Dataset_NVR ~ Task3Dataset_VR)), file = VelocityDocument, append = TRUE)
  cat("\n\n", file = VelocityDocument, append = TRUE)
  
  TestName <- "NVR Task 3 Velocity ~ NVRW Task 3 Velocity"
  capture.output(TestName, file = VelocityDocument, append = TRUE)
  capture.output(summary(aov(Task3Dataset_NVR ~ Task3Dataset_NVRW)), file = VelocityDocument, append = TRUE)
  cat("\n\n", file = AccelerationDocument, append = TRUE)
  
  TestName <- "NVRW Task 3 Velocity ~ VR Task 3 Velocity"
  capture.output(TestName, file = VelocityDocument, append = TRUE)
  capture.output(summary(aov(Task3Dataset_NVRW ~ Task3Dataset_VR)), file = VelocityDocument, append = TRUE)
}

#TimeSeries ANOVA
for(s in 1:ANOVAAmount)
{
  #Task 1 TimeSeries Datasets
  Task1Dataset_NVR <- RMS_NVRTask1_TimeSeries[, c(s)]
  Task1Dataset_VR <- RMS_VRTask1_TimeSeries[, c(s)]
  Task1Dataset_NVRW <- RMS_NVRWTask1_TimeSeries[, c(s)]
  
  #Task 2 TimeSeries Datasets
  Task2Dataset_NVR <- RMS_NVRTask2_TimeSeries[, c(s)]
  Task2Dataset_VR <- RMS_VRTask2_TimeSeries[, c(s)]
  Task2Dataset_NVRW <- RMS_NVRWTask2_TimeSeries[, c(s)]
  
  #Task 3 TimeSeries Datasets
  Task3Dataset_NVR <- RMS_NVRTask3_TimeSeries[, c(s)]
  Task3Dataset_VR <- RMS_VRTask3_TimeSeries[, c(s)]
  Task3Dataset_NVRW <- RMS_NVRWTask3_TimeSeries[, c(s)]
  
  #Task 1 ANOVA
  TestName <- "NVR Task 1 TimeSeries ~ VR Task 1 TimeSeries"
  capture.output(TestName, file = TimeSeriesDocument, append = TRUE)
  capture.output(summary(aov(Task1Dataset_NVR ~ Task1Dataset_VR)), file = TimeSeriesDocument, append = TRUE)
  cat("\n\n", file = TimeSeriesDocument, append = TRUE)
  
  TestName <- "NVR Task 1 TimeSeries ~ NVRW Task 1 TimeSeries"
  capture.output(TestName, file = TimeSeriesDocument, append = TRUE)
  capture.output(summary(aov(Task1Dataset_NVR ~ Task1Dataset_NVRW)), file = TimeSeriesDocument, append = TRUE)
  cat("\n\n", file = TimeSeriesDocument, append = TRUE)
  
  TestName <- "NVRW Task 1 TimeSeries ~ VR Task 1 TimeSeries"
  capture.output(TestName, file = TimeSeriesDocument, append = TRUE)
  capture.output(summary(aov(Task1Dataset_NVRW ~ Task1Dataset_VR)), file = TimeSeriesDocument, append = TRUE)
  cat("\n\n", file = TimeSeriesDocument, append = TRUE)
  
  #Task 2 ANOVA
  TestName <- "NVR Task 2 TimeSeries ~ VR Task 2 TimeSeries"
  capture.output(TestName, file = TimeSeriesDocument, append = TRUE)
  capture.output(summary(aov(Task2Dataset_NVR ~ Task2Dataset_VR)), file = TimeSeriesDocument, append = TRUE)
  cat("\n\n", file = TimeSeriesDocument, append = TRUE)
  
  TestName <- "NVR Task 2 TimeSeries ~ NVRW Task 2 TimeSeries"
  capture.output(TestName, file = TimeSeriesDocument, append = TRUE)
  capture.output(summary(aov(Task2Dataset_NVR ~ Task2Dataset_NVRW)), file = TimeSeriesDocument, append = TRUE)
  cat("\n\n", file = TimeSeriesDocument, append = TRUE)
  
  TestName <- "NVRW Task 2 TimeSeries ~ VR Task 2 TimeSeries"
  capture.output(TestName, file = TimeSeriesDocument, append = TRUE)
  capture.output(summary(aov(Task2Dataset_NVRW ~ Task2Dataset_VR)), file = TimeSeriesDocument, append = TRUE)
  cat("\n\n", file = TimeSeriesDocument, append = TRUE)
  
  #Task 3 ANOVA
  TestName <- "NVR Task 3 TimeSeries ~ VR Task 3 TimeSeries"
  capture.output(TestName, file = TimeSeriesDocument, append = TRUE)
  capture.output(summary(aov(Task3Dataset_NVR ~ Task3Dataset_VR)), file = TimeSeriesDocument, append = TRUE)
  cat("\n\n", file = TimeSeriesDocument, append = TRUE)
  
  TestName <- "NVR Task 3 TimeSeries ~ NVRW Task 3 TimeSeries"
  capture.output(TestName, file = TimeSeriesDocument, append = TRUE)
  capture.output(summary(aov(Task3Dataset_NVR ~ Task3Dataset_NVRW)), file = TimeSeriesDocument, append = TRUE)
  cat("\n\n", file = TimeSeriesDocument, append = TRUE)
  
  TestName <- "NVRW Task 3 TimeSeries ~ VR Task 3 TimeSeries"
  capture.output(TestName, file = TimeSeriesDocument, append = TRUE)
  capture.output(summary(aov(Task3Dataset_NVRW ~ Task3Dataset_VR)), file = TimeSeriesDocument, append = TRUE)
}
print("Completed")
