#Files which the ANOVA results will be written to.
dir.create("C:/Users/Jack/Desktop/Results/ANOVA Results")#Creates the ANOVA folder in the results folder.


AccelerationDocument <- "C:/Users/Jack/Desktop/Results/ANOVA Results/Acceleration_ANOVA.doc"
VelocityDocument <- "C:/Users/Jack/Desktop/Results/ANOVA Results/Velocity_ANOVA.doc"
TimeSeriesDocument <- "C:/Users/Jack/Desktop/Results/ANOVA Results/TimeSeries_ANOVA.doc"

cat("Acceleration ANOVA\n\n", file = AccelerationDocument, append = TRUE)
for(q in 1:3)
{
  if(q == 1)
  {
    cat("TASK 1\n\n", file = AccelerationDocument, append = TRUE)
    for(r in 1:3)
    {
      if(r == 1)
      {
        ColumnName <- "Heading"
        cat("HEADING\n\n", file = AccelerationDocument, append = TRUE)
      }
      if(r == 2)
      {
        ColumnName <- "Roll"
        cat("ROLL\n\n", file = AccelerationDocument, append = TRUE)
      }
      if(r == 3)
      {
        ColumnName <- "Pitch"
        cat("PITCH\n\n", file = AccelerationDocument, append = TRUE)
      }
      
      #Task 1 Acceleration Datasets
      Task1Dataset_NVR <- RMS_NVRTask1_Acceleration[, c(r)]
      Task1Dataset_VR <- RMS_VRTask1_Acceleration[, c(r)]
      Task1Dataset_NVRW <- RMS_NVRWTask1_Acceleration[, c(r)]
      
      TestName <- paste("NVR Task 1 Acceleration", "(",ColumnName,")", "~", "VR Task 1 Aceleration", "(",ColumnName,")")
      capture.output(TestName, file = AccelerationDocument, append = TRUE)
      capture.output(summary(aov(Task1Dataset_NVR ~ Task1Dataset_VR)), file = AccelerationDocument, append = TRUE)
      cat("\n\n", file = AccelerationDocument, append = TRUE)
      
      TestName <- paste("NVR Task 1 Acceleration", "(",ColumnName,")", "~", "NVRW Task 1 Aceleration", "(",ColumnName,")")
      capture.output(TestName, file = AccelerationDocument, append = TRUE)
      capture.output(summary(aov(Task1Dataset_NVR ~ Task1Dataset_NVRW)), file = AccelerationDocument, append = TRUE)
      cat("\n\n", file = AccelerationDocument, append = TRUE)
      
      TestName <- paste("NVRW Task 1 Acceleration", "(",ColumnName,")", "~", "VR Task 1 Aceleration", "(",ColumnName,")")
      capture.output(TestName, file = AccelerationDocument, append = TRUE)
      capture.output(summary(aov(Task1Dataset_NVRW ~ Task1Dataset_VR)), file = AccelerationDocument, append = TRUE)
      cat("\n\n", file = AccelerationDocument, append = TRUE)
    }
  }
  if(q == 2)
  {
    cat("TASK 2\n\n", file = AccelerationDocument, append = TRUE)
    for(r in 1:3)
    {
      if(r == 1)
      {
        ColumnName <- "Heading"
        cat("HEADING\n\n", file = AccelerationDocument, append = TRUE)
      }
      if(r == 2)
      {
        ColumnName <- "Roll"
        cat("ROLL\n\n", file = AccelerationDocument, append = TRUE)
      }
      if(r == 3)
      {
        ColumnName <- "Pitch"
        cat("PITCH\n\n", file = AccelerationDocument, append = TRUE)
      }
      
      #Task 2 Acceleration Datasets
      Task2Dataset_NVR <- RMS_NVRTask2_Acceleration[, c(r)]
      Task2Dataset_VR <- RMS_VRTask2_Acceleration[, c(r)]
      Task2Dataset_NVRW <- RMS_NVRWTask2_Acceleration[, c(r)]
      
      #Task 2 ANOVA
      TestName <- paste("NVR Task 2 Acceleration", "(",ColumnName,")", "~", "VR Task 2 Aceleration", "(",ColumnName,")")
      capture.output(TestName, file = AccelerationDocument, append = TRUE)
      capture.output(summary(aov(Task2Dataset_NVR ~ Task2Dataset_VR)), file = AccelerationDocument, append = TRUE)
      cat("\n\n", file = AccelerationDocument, append = TRUE)
      
      TestName <- paste("NVR Task 2 Acceleration", "(",ColumnName,")", "~", "NVRW Task 2 Aceleration", "(",ColumnName,")")
      capture.output(TestName, file = AccelerationDocument, append = TRUE)
      capture.output(summary(aov(Task2Dataset_NVR ~ Task2Dataset_NVRW)), file = AccelerationDocument, append = TRUE)
      cat("\n\n", file = AccelerationDocument, append = TRUE)
      
      TestName <- paste("NVRW Task 2 Acceleration", "(",ColumnName,")", "~", "VR Task 2 Aceleration", "(",ColumnName,")")
      capture.output(TestName, file = AccelerationDocument, append = TRUE)
      capture.output(summary(aov(Task2Dataset_NVRW ~ Task2Dataset_VR)), file = AccelerationDocument, append = TRUE)
      cat("\n\n", file = AccelerationDocument, append = TRUE)
    }
  }
  if(q == 3)
  {
    cat("TASK 3\n\n", file = AccelerationDocument, append = TRUE)
    for(r in 1:3)
    {
      if(r == 1)
      {
        ColumnName <- "Heading"
        cat("HEADING\n\n", file = AccelerationDocument, append = TRUE)
      }
      if(r == 2)
      {
        ColumnName <- "Roll"
        cat("ROLL\n\n", file = AccelerationDocument, append = TRUE)
      }
      if(r == 3)
      {
        ColumnName <- "Pitch"
        cat("PITCH\n\n", file = AccelerationDocument, append = TRUE)
      }
      
      #Task 3 Acceleration Datasets
      Task3Dataset_NVR <- RMS_NVRTask3_Acceleration[, c(r)]
      Task3Dataset_VR <- RMS_VRTask3_Acceleration[, c(r)]
      Task3Dataset_NVRW <- RMS_NVRWTask3_Acceleration[, c(r)]
      
      #Task 3 ANOVA
      TestName <- paste("NVR Task 3 Acceleration", "(",ColumnName,")", "~", "VR Task 3 Aceleration", "(",ColumnName,")")
      capture.output(TestName, file = AccelerationDocument, append = TRUE)
      capture.output(summary(aov(Task3Dataset_NVR ~ Task3Dataset_VR)), file = AccelerationDocument, append = TRUE)
      cat("\n\n", file = AccelerationDocument, append = TRUE)
      
      TestName <- paste("NVR Task 3 Acceleration", "(",ColumnName,")", "~", "NVRW Task 3 Aceleration", "(",ColumnName,")")
      capture.output(TestName, file = AccelerationDocument, append = TRUE)
      capture.output(summary(aov(Task3Dataset_NVR ~ Task3Dataset_NVRW)), file = AccelerationDocument, append = TRUE)
      cat("\n\n", file = AccelerationDocument, append = TRUE)
      
      TestName <- paste("NVRW Task 3 Acceleration", "(",ColumnName,")", "~", "VR Task 3 Aceleration", "(",ColumnName,")")
      capture.output(TestName, file = AccelerationDocument, append = TRUE)
      capture.output(summary(aov(Task3Dataset_NVRW ~ Task3Dataset_VR)), file = AccelerationDocument, append = TRUE)
      cat("\n\n", file = AccelerationDocument, append = TRUE)
    }
  }
}

cat("Velocity ANOVA\n\n", file = VelocityDocument, append = TRUE)
for(q in 1:3)
{
  if(q == 1)
  {
    cat("TASK 1\n\n", file = VelocityDocument, append = TRUE)
    for(r in 1:3)
    {
      if(r == 1)
      {
        ColumnName <- "Heading"
        cat("HEADING\n\n", file = VelocityDocument, append = TRUE)
      }
      if(r == 2)
      {
        ColumnName <- "Roll"
        cat("ROLL\n\n", file = VelocityDocument, append = TRUE)
      }
      if(r == 3)
      {
        ColumnName <- "Pitch"
        cat("PITCH\n\n", file = VelocityDocument, append = TRUE)
      }
      
      #Task 1 Velocity Datasets
      Task1Dataset_NVR <- RMS_NVRTask1_Velocity[, c(r)]
      Task1Dataset_VR <- RMS_VRTask1_Velocity[, c(r)]
      Task1Dataset_NVRW <- RMS_NVRWTask1_Velocity[, c(r)]
      
      #Task 1 ANOVA
      TestName <- paste("NVR Task 1 Velocity", "(",ColumnName,")", "~", "VR Task 1 Velocity", "(",ColumnName,")")
      capture.output(TestName, file = VelocityDocument, append = TRUE)
      capture.output(summary(aov(Task1Dataset_NVR ~ Task1Dataset_VR)), file = VelocityDocument, append = TRUE)
      cat("\n\n", file = VelocityDocument, append = TRUE)
      
      TestName <- paste("NVR Task 1 Velocity", "(",ColumnName,")", "~", "NVRW Task 1 Velocity", "(",ColumnName,")")
      capture.output(TestName, file = VelocityDocument, append = TRUE)
      capture.output(summary(aov(Task1Dataset_NVR ~ Task1Dataset_NVRW)), file = VelocityDocument, append = TRUE)
      cat("\n\n", file = VelocityDocument, append = TRUE)
      
      TestName <- paste("NVRW Task 1 Velocity", "(",ColumnName,")", "~", "VR Task 1 Velocity", "(",ColumnName,")")
      capture.output(TestName, file = VelocityDocument, append = TRUE)
      capture.output(summary(aov(Task1Dataset_NVRW ~ Task1Dataset_VR)), file = VelocityDocument, append = TRUE)
      cat("\n\n", file = VelocityDocument, append = TRUE)
    }
  }
  if(q == 2)
  {
    cat("TASK 2\n\n", file = VelocityDocument, append = TRUE)
    for(r in 1:3)
    {
      if(r == 1)
      {
        ColumnName <- "Heading"
        cat("HEADING\n\n", file = VelocityDocument, append = TRUE)
      }
      if(r == 2)
      {
        ColumnName <- "Roll"
        cat("ROLL\n\n", file = VelocityDocument, append = TRUE)
      }
      if(r == 3)
      {
        ColumnName <- "Pitch"
        cat("PITCH\n\n", file = VelocityDocument, append = TRUE)
      }
      
      #Task 2 Velocity Datasets
      Task2Dataset_NVR <- RMS_NVRTask2_Velocity[, c(r)]
      Task2Dataset_VR <- RMS_VRTask2_Velocity[, c(r)]
      Task2Dataset_NVRW <- RMS_NVRWTask2_Velocity[, c(r)]
      
      #Task 2 ANOVA
      TestName <- paste("NVR Task 2 Velocity", "(",ColumnName,")", "~", "VR Task 2 Velocity", "(",ColumnName,")")
      capture.output(TestName, file = VelocityDocument, append = TRUE)
      capture.output(summary(aov(Task2Dataset_NVR ~ Task2Dataset_VR)), file = VelocityDocument, append = TRUE)
      cat("\n\n", file = VelocityDocument, append = TRUE)
      
      TestName <- paste("NVR Task 2 Velocity", "(",ColumnName,")", "~", "NVRW Task 2 Velocity", "(",ColumnName,")")
      capture.output(TestName, file = VelocityDocument, append = TRUE)
      capture.output(summary(aov(Task2Dataset_NVR ~ Task2Dataset_NVRW)), file = VelocityDocument, append = TRUE)
      cat("\n\n", file = VelocityDocument, append = TRUE)
      
      TestName <- paste("NVRW Task 2 Velocity", "(",ColumnName,")", "~", "VR Task 2 Velocity", "(",ColumnName,")")
      capture.output(TestName, file = VelocityDocument, append = TRUE)
      capture.output(summary(aov(Task2Dataset_NVRW ~ Task2Dataset_VR)), file = VelocityDocument, append = TRUE)
      cat("\n\n", file = VelocityDocument, append = TRUE)
    }
  }
  if(q == 3)
  {
    cat("TASK 3\n\n", file = VelocityDocument, append = TRUE)
    for(r in 1:3)
    {
      if(r == 1)
      {
        ColumnName <- "Heading"
        cat("HEADING\n\n", file = VelocityDocument, append = TRUE)
      }
      if(r == 2)
      {
        ColumnName <- "Roll"
        cat("ROLL\n\n", file = VelocityDocument, append = TRUE)
      }
      if(r == 3)
      {
        ColumnName <- "Pitch"
        cat("PITCH\n\n", file = VelocityDocument, append = TRUE)
      }
      
      #Task 3 Velocity Datasets
      Task3Dataset_NVR <- RMS_NVRTask3_Velocity[, c(r)]
      Task3Dataset_VR <- RMS_VRTask3_Velocity[, c(r)]
      Task3Dataset_NVRW <- RMS_NVRWTask3_Velocity[, c(r)]
      
      #Task 3 ANOVA
      TestName <- paste("NVR Task 3 Velocity", "(",ColumnName,")", "~", "VR Task 3 Velocity", "(",ColumnName,")")
      capture.output(TestName, file = VelocityDocument, append = TRUE)
      capture.output(summary(aov(Task3Dataset_NVR ~ Task3Dataset_VR)), file = VelocityDocument, append = TRUE)
      cat("\n\n", file = VelocityDocument, append = TRUE)
      
      TestName <- paste("NVR Task 3 Velocity", "(",ColumnName,")", "~", "NVRW Task 3 Velocity", "(",ColumnName,")")
      capture.output(TestName, file = VelocityDocument, append = TRUE)
      capture.output(summary(aov(Task3Dataset_NVR ~ Task3Dataset_NVRW)), file = VelocityDocument, append = TRUE)
      cat("\n\n", file = AccelerationDocument, append = TRUE)
      
      TestName <- paste("NVRW Task 3 Velocity", "(",ColumnName,")", "~", "VR Task 3 Velocity", "(",ColumnName,")")
      capture.output(TestName, file = VelocityDocument, append = TRUE)
      capture.output(summary(aov(Task3Dataset_NVRW ~ Task3Dataset_VR)), file = VelocityDocument, append = TRUE)
      cat("\n\n", file = AccelerationDocument, append = TRUE)
    }
  }
}

cat("TimeSeries ANOVA\n\n", file = TimeSeriesDocument, append = TRUE)
for(q in 1:3)
{
  if(q == 1)
  {
    cat("TASK 1\n\n", file = TimeSeriesDocument, append = TRUE)
    for(r in 1:3)
    {
      if(r == 1)
      {
        ColumnName <- "Heading"
        cat("HEADING\n\n", file = TimeSeriesDocument, append = TRUE)
      }
      if(r == 2)
      {
        ColumnName <- "Roll"
        cat("ROLL\n\n", file = TimeSeriesDocument, append = TRUE)
      }
      if(r == 3)
      {
        ColumnName <- "Pitch"
        cat("PITCH\n\n", file = TimeSeriesDocument, append = TRUE)
      }
      
      #Task 1 TimeSeries Datasets
      Task1Dataset_NVR <- RMS_NVRTask1_TimeSeries[, c(r)]
      Task1Dataset_VR <- RMS_VRTask1_TimeSeries[, c(r)]
      Task1Dataset_NVRW <- RMS_NVRWTask1_TimeSeries[, c(r)]
      
      #Task 1 ANOVA
      TestName <- paste("NVR Task 1 TimeSeries", "(",ColumnName,")", "~", "VR Task 1 TimeSeries", "(",ColumnName,")")
      capture.output(TestName, file = TimeSeriesDocument, append = TRUE)
      capture.output(summary(aov(Task1Dataset_NVR ~ Task1Dataset_VR)), file = TimeSeriesDocument, append = TRUE)
      cat("\n\n", file = TimeSeriesDocument, append = TRUE)
      
      TestName <- paste("NVR Task 1 TimeSeries", "(",ColumnName,")", "~", "NVRW Task 1 TimeSeries", "(",ColumnName,")")
      capture.output(TestName, file = TimeSeriesDocument, append = TRUE)
      capture.output(summary(aov(Task1Dataset_NVR ~ Task1Dataset_NVRW)), file = TimeSeriesDocument, append = TRUE)
      cat("\n\n", file = TimeSeriesDocument, append = TRUE)
      
      TestName <- paste("NVRW Task 1 TimeSeries", "(",ColumnName,")", "~", "VR Task 1 TimeSeries", "(",ColumnName,")")
      capture.output(TestName, file = TimeSeriesDocument, append = TRUE)
      capture.output(summary(aov(Task1Dataset_NVRW ~ Task1Dataset_VR)), file = TimeSeriesDocument, append = TRUE)
      cat("\n\n", file = TimeSeriesDocument, append = TRUE)
    }
  }
  if(q == 2)
  {
    cat("TASK 2\n\n", file = TimeSeriesDocument, append = TRUE)
    for(r in 1:3)
    {
      if(r == 1)
      {
        ColumnName <- "Heading"
        cat("HEADING\n\n", file = TimeSeriesDocument, append = TRUE)
      }
      if(r == 2)
      {
        ColumnName <- "Roll"
        cat("ROLL\n\n", file = TimeSeriesDocument, append = TRUE)
      }
      if(r == 3)
      {
        ColumnName <- "Pitch"
        cat("PITCH\n\n", file = TimeSeriesDocument, append = TRUE)
      }
      
      #Task 2 TimeSeries Datasets
      Task2Dataset_NVR <- RMS_NVRTask2_TimeSeries[, c(r)]
      Task2Dataset_VR <- RMS_VRTask2_TimeSeries[, c(r)]
      Task2Dataset_NVRW <- RMS_NVRWTask2_TimeSeries[, c(r)]
      
      #Task 2 ANOVA
      TestName <- paste("NVR Task 2 TimeSeries", "(",ColumnName,")", "~", "VR Task 2 TimeSeries", "(",ColumnName,")")
      capture.output(TestName, file = TimeSeriesDocument, append = TRUE)
      capture.output(summary(aov(Task2Dataset_NVR ~ Task2Dataset_VR)), file = TimeSeriesDocument, append = TRUE)
      cat("\n\n", file = TimeSeriesDocument, append = TRUE)
      
      TestName <- paste("NVR Task 2 TimeSeries", "(",ColumnName,")", "~", "NVRW Task 2 TimeSeries", "(",ColumnName,")")
      capture.output(TestName, file = TimeSeriesDocument, append = TRUE)
      capture.output(summary(aov(Task2Dataset_NVR ~ Task2Dataset_NVRW)), file = TimeSeriesDocument, append = TRUE)
      cat("\n\n", file = TimeSeriesDocument, append = TRUE)
      
      TestName <- paste("NVRW Task 2 TimeSeries", "(",ColumnName,")", "~", "VR Task 2 TimeSeries", "(",ColumnName,")")
      capture.output(TestName, file = TimeSeriesDocument, append = TRUE)
      capture.output(summary(aov(Task2Dataset_NVRW ~ Task2Dataset_VR)), file = TimeSeriesDocument, append = TRUE)
      cat("\n\n", file = TimeSeriesDocument, append = TRUE)
    }
  }
  if(q == 3)
  {
    cat("TASK 3\n\n", file = TimeSeriesDocument, append = TRUE)
    for(r in 1:3)
    {
      if(r == 1)
      {
        ColumnName <- "Heading"
        cat("HEADING\n\n", file = TimeSeriesDocument, append = TRUE)
      }
      if(r == 2)
      {
        ColumnName <- "Roll"
        cat("ROLL\n\n", file = TimeSeriesDocument, append = TRUE)
      }
      if(r == 3)
      {
        ColumnName <- "Pitch"
        cat("PITCH\n\n", file = TimeSeriesDocument, append = TRUE)
      }
      
      #Task 3 TimeSeries Datasets
      Task3Dataset_NVR <- RMS_NVRTask3_TimeSeries[, c(r)]
      Task3Dataset_VR <- RMS_VRTask3_TimeSeries[, c(r)]
      Task3Dataset_NVRW <- RMS_NVRWTask3_TimeSeries[, c(r)]
      
      #Task 3 ANOVA
      TestName <- paste("NVR Task 3 TimeSeries", "(",ColumnName,")", "~", "VR Task 3 TimeSeries", "(",ColumnName,")")
      capture.output(TestName, file = TimeSeriesDocument, append = TRUE)
      capture.output(summary(aov(Task3Dataset_NVR ~ Task3Dataset_VR)), file = TimeSeriesDocument, append = TRUE)
      cat("\n\n", file = TimeSeriesDocument, append = TRUE)
      
      TestName <- paste("NVR Task 3 TimeSeries", "(",ColumnName,")", "~", "NVRW Task 3 TimeSeries", "(",ColumnName,")")
      capture.output(TestName, file = TimeSeriesDocument, append = TRUE)
      capture.output(summary(aov(Task3Dataset_NVR ~ Task3Dataset_NVRW)), file = TimeSeriesDocument, append = TRUE)
      cat("\n\n", file = TimeSeriesDocument, append = TRUE)
      
      TestName <- paste("NVRW Task 3 TimeSeries", "(",ColumnName,")", "~", "VR Task 3 TimeSeries", "(",ColumnName,")")
      capture.output(TestName, file = TimeSeriesDocument, append = TRUE)
      capture.output(summary(aov(Task3Dataset_NVRW ~ Task3Dataset_VR)), file = TimeSeriesDocument, append = TRUE)
      cat("\n\n", file = TimeSeriesDocument, append = TRUE)
    }
  }
  
}
rm(AccelerationDocument, VelocityDocument, TimeSeriesDocument, ColumnName, q, r, Task1Dataset_NVR, Task2Dataset_NVR, Task3Dataset_NVR
   ,Task1Dataset_VR, Task2Dataset_VR, Task3Dataset_VR, Task1Dataset_NVRW, Task2Dataset_NVRW, Task3Dataset_NVRW, TestName)

print("Completed")


















