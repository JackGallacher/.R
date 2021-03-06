#Files which the ANOVA results will be written to.
dir.create("C:/Users/Jack/Desktop/Results/ANOVA Results")#Creates the ANOVA folder in the results folder.

#Creates the folders that the box plots of the RMS values will be saved into.
dir.create("C:/Users/Jack/Desktop/Results/ANOVA Results/Box Plots")
dir.create("C:/Users/Jack/Desktop/Results/ANOVA Results/Box Plots/Acceleration")
dir.create("C:/Users/Jack/Desktop/Results/ANOVA Results/Box Plots/Velocity")
dir.create("C:/Users/Jack/Desktop/Results/ANOVA Results/Box Plots/TimeSeries")

dir.create("C:/Users/Jack/Desktop/Results/ANOVA Results/Box Plots/Acceleration/Task 1")
dir.create("C:/Users/Jack/Desktop/Results/ANOVA Results/Box Plots/Velocity/Task 1")
dir.create("C:/Users/Jack/Desktop/Results/ANOVA Results/Box Plots/TimeSeries/Task 1")

dir.create("C:/Users/Jack/Desktop/Results/ANOVA Results/Box Plots/Acceleration/Task 2")
dir.create("C:/Users/Jack/Desktop/Results/ANOVA Results/Box Plots/Velocity/Task 2")
dir.create("C:/Users/Jack/Desktop/Results/ANOVA Results/Box Plots/TimeSeries/Task 2")

dir.create("C:/Users/Jack/Desktop/Results/ANOVA Results/Box Plots/Acceleration/Task 3")
dir.create("C:/Users/Jack/Desktop/Results/ANOVA Results/Box Plots/Velocity/Task 3")
dir.create("C:/Users/Jack/Desktop/Results/ANOVA Results/Box Plots/TimeSeries/Task 3")

Task1Folder_Acceleration <- "C:/Users/Jack/Desktop/Results/ANOVA Results/Box Plots/Acceleration/Task 1"
Task1Folder_Velocity <- "C:/Users/Jack/Desktop/Results/ANOVA Results/Box Plots/Velocity/Task 1"
Task1Folder_TimeSeries <- "C:/Users/Jack/Desktop/Results/ANOVA Results/Box Plots/TimeSeries/Task 1"

Task2Folder_Acceleration <- "C:/Users/Jack/Desktop/Results/ANOVA Results/Box Plots/Acceleration/Task 2"
Task2Folder_Velocity <- "C:/Users/Jack/Desktop/Results/ANOVA Results/Box Plots/Velocity/Task 2"
Task2Folder_TimeSeries <- "C:/Users/Jack/Desktop/Results/ANOVA Results/Box Plots/TimeSeries/Task 2"

Task3Folder_Acceleration <- "C:/Users/Jack/Desktop/Results/ANOVA Results/Box Plots/Acceleration/Task 3"
Task3Folder_Velocity <- "C:/Users/Jack/Desktop/Results/ANOVA Results/Box Plots/Velocity/Task 3"
Task3Folder_TimeSeries <- "C:/Users/Jack/Desktop/Results/ANOVA Results/Box Plots/TimeSeries/Task 3"

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
      
      TestName <- paste("NVR Task 1 Acceleration ", "(",ColumnName,")", " ~ ", "VR Task 1 Aceleration ", "(",ColumnName,")", sep = "")
      capture.output(TestName, file = AccelerationDocument, append = TRUE)
      capture.output(summary(aov(Task1Dataset_NVR ~ Task1Dataset_VR)), file = AccelerationDocument, append = TRUE)
      cat("\n\n", file = AccelerationDocument, append = TRUE)
      
      #Creates Boxplot of task and saves to file/folder.
      MyPath <- file.path(Task1Folder_Acceleration, paste("NVR Task 1 Acceleration ", "(",ColumnName,")", " ~ ", "VR Task 1 Aceleration ", "(",ColumnName,")", ".png", sep = ""))
      png(file = MyPath, width = 960, height = 960)
      boxplot(Task1Dataset_NVR, Task1Dataset_VR, main = TestName, ylab = "RMS Values", col = terrain.colors(3), xaxt = 'n')
      par(mar=c(6, 4.5, 4.1, 0.5), xpd=TRUE)#Sets the margins to make the graphs look nice.
      legend("bottom", inset = c(0, -0.07),title = "Data Set", c(paste("NVR Task 1 Acceleration ", "(",ColumnName,")", sep = ""), paste("VR Task 1 Acceleration ", "(",ColumnName,")", sep = "")), fil = terrain.colors(3), horiz = TRUE)
      dev.off()

      TestName <- paste("NVR Task 1 Acceleration ", "(",ColumnName,")", " ~ ", "NVRW Task 1 Aceleration ", "(",ColumnName,")", sep = "")
      capture.output(TestName, file = AccelerationDocument, append = TRUE)
      capture.output(summary(aov(Task1Dataset_NVR ~ Task1Dataset_NVRW)), file = AccelerationDocument, append = TRUE)
      cat("\n\n", file = AccelerationDocument, append = TRUE)
      
      MyPath = file.path(Task1Folder_Acceleration, paste("NVR Task 1 Acceleration ", "(",ColumnName,")", " ~ ", "NVRW Task 1 Aceleration ", "(",ColumnName,")",".png", sep = ""))
      png(file = MyPath, width = 960, height = 960)
      boxplot(Task1Dataset_NVR, Task1Dataset_NVRW, main = TestName, ylab = "RMS Values", col = terrain.colors(3), xaxt = 'n')
      par(mar=c(6, 4.5, 4.1, 0.5), xpd=TRUE)
      legend("bottom", inset = c(0, -0.07),title = "Data Set", c(paste("NVR Task 1 Acceleration ", "(",ColumnName,")", sep = ""), paste("NVRW Task 1 Acceleration ", "(",ColumnName,")", sep = "")), fil = terrain.colors(3), horiz = TRUE)
      dev.off()
      
      TestName <- paste("NVRW Task 1 Acceleration ", "(",ColumnName,")", " ~ ", "VR Task 1 Acceleration ", "(",ColumnName,")", sep = "")
      capture.output(TestName, file = AccelerationDocument, append = TRUE)
      capture.output(summary(aov(Task1Dataset_NVRW ~ Task1Dataset_VR)), file = AccelerationDocument, append = TRUE)
      cat("\n\n", file = AccelerationDocument, append = TRUE)

      MyPath <- file.path(Task1Folder_Acceleration, paste("NVRW Task 1 Acceleration ", "(",ColumnName,")", " ~ ", "VR Task 1 Acceleration ", "(",ColumnName,")",".png", sep = ""))
      png(file = MyPath, width = 960, height = 960)
      boxplot(Task1Dataset_NVRW, Task1Dataset_VR, main = TestName, ylab = "RMS Values", col = terrain.colors(3), xaxt = 'n')
      par(mar=c(6, 4.5, 4.1, 0.5), xpd=TRUE)
      legend("bottom", inset = c(0, -0.07),title = "Data Set", c(paste("NVRW Task 1 Acceleration ", "(",ColumnName,")", sep = ""), paste("VR Task 1 Acceleration ", "(",ColumnName,")", sep = "")), fil = terrain.colors(3), horiz = TRUE)
      dev.off()
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
      TestName <- paste("NVR Task 2 Acceleration ", "(",ColumnName,")", " ~ ", "VR Task 2 Aceleration ", "(",ColumnName,")", sep = "")
      capture.output(TestName, file = AccelerationDocument, append = TRUE)
      capture.output(summary(aov(Task2Dataset_NVR ~ Task2Dataset_VR)), file = AccelerationDocument, append = TRUE)
      cat("\n\n", file = AccelerationDocument, append = TRUE)
      
      MyPath <- file.path(Task2Folder_Acceleration, paste("NVR Task 2 Acceleration ", "(",ColumnName,")", " ~ ", "VR Task 2 Acceleration ", "(",ColumnName,")", ".png", sep = ""))
      png(file = MyPath, width = 960, height = 960)
      boxplot(Task2Dataset_NVR, Task2Dataset_VR, main = TestName, ylab = "RMS Values", col = terrain.colors(3), xaxt = 'n')
      par(mar=c(6, 4.5, 4.1, 0.5), xpd=TRUE)
      legend("bottom", inset = c(0, -0.07),title = "Data Set", c(paste("NVR Task 2 Acceleration ", "(",ColumnName,")", sep = ""), paste("VR Task 2 Aceleration ", "(",ColumnName,")", sep = "")), fil = terrain.colors(3), horiz = TRUE)
      dev.off()
      
      TestName <- paste("NVR Task 2 Acceleration ", "(",ColumnName,")", " ~ ", "NVRW Task 2 Acceleration ", "(",ColumnName,")", sep = "")
      capture.output(TestName, file = AccelerationDocument, append = TRUE)
      capture.output(summary(aov(Task2Dataset_NVR ~ Task2Dataset_NVRW)), file = AccelerationDocument, append = TRUE)
      cat("\n\n", file = AccelerationDocument, append = TRUE)
      
      MyPath <- file.path(Task2Folder_Acceleration, paste("NVR Task 2 Acceleration ", "(",ColumnName,")", " ~ ", "NVRW Task 2 Acceleration ", "(",ColumnName,")", ".png", sep = ""))
      png(file = MyPath, width = 960, height = 960)
      boxplot(Task2Dataset_NVR, Task2Dataset_NVRW, main = TestName, ylab = "RMS Values", col = terrain.colors(3), xaxt = 'n')
      par(mar=c(6, 4.5, 4.1, 0.5), xpd=TRUE)
      legend("bottom", inset = c(0, -0.07),title = "Data Set", c(paste("NVR Task 2 Acceleration ", "(",ColumnName,")", sep = ""), paste("NVRW Task 2 Acceleration ", "(",ColumnName,")", sep = "")), fil = terrain.colors(3), horiz = TRUE)
      dev.off()
      
      TestName <- paste("NVRW Task 2 Acceleration ", "(",ColumnName,")", " ~ ", "VR Task 2 Acceleration ", "(",ColumnName,")", sep = "")
      capture.output(TestName, file = AccelerationDocument, append = TRUE)
      capture.output(summary(aov(Task2Dataset_NVRW ~ Task2Dataset_VR)), file = AccelerationDocument, append = TRUE)
      cat("\n\n", file = AccelerationDocument, append = TRUE)
      
      MyPath <- file.path(Task2Folder_Acceleration, paste("NVRW Task 2 Acceleration ", "(",ColumnName,")", " ~ ", "VR Task 2 Acceleration ", "(",ColumnName,")", ".png", sep = ""))
      png(file = MyPath, width = 960, height = 960)
      boxplot(Task2Dataset_NVRW, Task2Dataset_VR, main = TestName, ylab = "RMS Values", col = terrain.colors(3), xaxt = 'n')
      par(mar=c(6, 4.5, 4.1, 0.5), xpd=TRUE)
      legend("bottom", inset = c(0, -0.07),title = "Data Set", c(paste("NVRW Task 2 Acceleration ", "(",ColumnName,")", sep = ""), paste("VR Task 2 Acceleration ", "(",ColumnName,")", sep = "")), fil = terrain.colors(3), horiz = TRUE)
      dev.off()
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
      TestName <- paste("NVR Task 3 Acceleration ", "(",ColumnName,")", " ~ ", "VR Task 3 Acceleration ", "(",ColumnName,")", sep = "")
      capture.output(TestName, file = AccelerationDocument, append = TRUE)
      capture.output(summary(aov(Task3Dataset_NVR ~ Task3Dataset_VR)), file = AccelerationDocument, append = TRUE)
      cat("\n\n", file = AccelerationDocument, append = TRUE)
      
      MyPath <- file.path(Task3Folder_Acceleration, paste("NVR Task 3 Acceleration", "(",ColumnName,")", "~", "VR Task 3 Acceleration", "(",ColumnName,")", ".png", sep = ""))
      png(file = MyPath, width = 960, height = 960)
      boxplot(Task3Dataset_NVR, Task3Dataset_VR, main = TestName, ylab = "RMS Values", col = terrain.colors(3), xaxt = 'n')
      par(mar=c(6, 4.5, 4.1, 0.5), xpd=TRUE)
      legend("bottom", inset = c(0, -0.07),title = "Data Set", c(paste("NVR Task 3 Acceleration ", "(",ColumnName,")", sep = ""), paste("VR Task 3 Acceleration ", "(",ColumnName,")", sep = "")), fil = terrain.colors(3), horiz = TRUE)
      dev.off()
      
      TestName <- paste("NVR Task 3 Acceleration ", "(",ColumnName,")", " ~ ", "NVRW Task 3 Acceleration ", "(",ColumnName,")", sep = "")
      capture.output(TestName, file = AccelerationDocument, append = TRUE)
      capture.output(summary(aov(Task3Dataset_NVR ~ Task3Dataset_NVRW)), file = AccelerationDocument, append = TRUE)
      cat("\n\n", file = AccelerationDocument, append = TRUE)
      
      MyPath <- file.path(Task3Folder_Acceleration, paste("NVR Task 3 Acceleration ", "(",ColumnName,")", " ~ ", "NVRW Task 3 Acceleration ", "(",ColumnName,")", ".png", sep = ""))
      png(file = MyPath, width = 960, height = 960)
      boxplot(Task3Dataset_NVR, Task3Dataset_NVRW, main = TestName, ylab = "RMS Values", col = terrain.colors(3), xaxt = 'n')
      par(mar=c(6, 4.5, 4.1, 0.5), xpd=TRUE)
      legend("bottom", inset = c(0, -0.07),title = "Data Set", c(paste("NVR Task 3 Acceleration ", "(",ColumnName,")", sep = ""), paste("NVRW Task 3 Acceleration ", "(",ColumnName,")", sep = "")), fil = terrain.colors(3), horiz = TRUE)
      dev.off()
      
      TestName <- paste("NVRW Task 3 Acceleration ", "(",ColumnName,")", " ~ ", "VR Task 3 Acceleration ", "(",ColumnName,")", sep = "")
      capture.output(TestName, file = AccelerationDocument, append = TRUE)
      capture.output(summary(aov(Task3Dataset_NVRW ~ Task3Dataset_VR)), file = AccelerationDocument, append = TRUE)
      cat("\n\n", file = AccelerationDocument, append = TRUE)
      
      MyPath <- file.path(Task3Folder_Acceleration, paste("NVRW Task 3 Acceleration ", "(",ColumnName,")", " ~ ", "VR Task 3 Acceleration ", "(",ColumnName,")", ".png", sep = ""))
      png(file = MyPath, width = 960, height = 960)
      boxplot(Task3Dataset_NVRW, Task3Dataset_VR, main = TestName, ylab = "RMS Values", col = terrain.colors(3), xaxt = 'n')
      par(mar=c(6, 4.5, 4.1, 0.5), xpd=TRUE)
      legend("bottom", inset = c(0, -0.07),title = "Data Set", c(paste("NVRW Task 3 Acceleration ", "(",ColumnName,")", sep = ""), paste("VR Task 3 Acceleration ", "(",ColumnName,")", sep = "")), fil = terrain.colors(3), horiz = TRUE)
      dev.off()
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
      TestName <- paste("NVR Task 1 Velocity ", "(",ColumnName,")", " ~ ", "VR Task 1 Velocity ", "(",ColumnName,")", sep = "")
      capture.output(TestName, file = VelocityDocument, append = TRUE)
      capture.output(summary(aov(Task1Dataset_NVR ~ Task1Dataset_VR)), file = VelocityDocument, append = TRUE)
      cat("\n\n", file = VelocityDocument, append = TRUE)
      
      MyPath <- file.path(Task1Folder_Velocity, paste("NVR Task 1 Velocity ", "(",ColumnName,")", " ~ ", "VR Task 1 Velocity ", "(",ColumnName,")", ".png", sep = ""))
      png(file = MyPath, width = 960, height = 960)
      boxplot(Task1Dataset_NVR, Task1Dataset_VR, main = TestName, ylab = "RMS Values", col = terrain.colors(3), xaxt = 'n')
      par(mar=c(6, 4.5, 4.1, 0.5), xpd=TRUE)
      legend("bottom", inset = c(0, -0.07),title = "Data Set", c(paste("NVR Task 1 Velocity ", "(",ColumnName,")", sep = ""), paste("VR Task 1 Velocity ", "(",ColumnName,")", sep = "")), fil = terrain.colors(3), horiz = TRUE)
      dev.off()
      
      TestName <- paste("NVR Task 1 Velocity ", "(",ColumnName,")", " ~ ", "NVRW Task 1 Velocity ", "(",ColumnName,")", sep = "")
      capture.output(TestName, file = VelocityDocument, append = TRUE)
      capture.output(summary(aov(Task1Dataset_NVR ~ Task1Dataset_NVRW)), file = VelocityDocument, append = TRUE)
      cat("\n\n", file = VelocityDocument, append = TRUE)
      
      MyPath <- file.path(Task1Folder_Velocity, paste("NVR Task 1 Velocity ", "(",ColumnName,")", " ~ ", "NVRW Task 1 Velocity ", "(",ColumnName,")", ".png", sep = ""))
      png(file = MyPath, width = 960, height = 960)
      boxplot(Task1Dataset_NVR, Task1Dataset_NVRW, main = TestName, ylab = "RMS Values", col = terrain.colors(3), xaxt = 'n')
      par(mar=c(6, 4.5, 4.1, 0.5), xpd=TRUE)
      legend("bottom", inset = c(0, -0.07),title = "Data Set", c(paste("NVR Task 1 Velocity ", "(",ColumnName,")", sep = ""), paste("NVRW Task 1 Velocity ", "(",ColumnName,")", sep = "")), fil = terrain.colors(3), horiz = TRUE)
      dev.off()
      
      TestName <- paste("NVRW Task 1 Velocity ", "(",ColumnName,")", " ~ ", "VR Task 1 Velocity ", "(",ColumnName,")", sep = "")
      capture.output(TestName, file = VelocityDocument, append = TRUE)
      capture.output(summary(aov(Task1Dataset_NVRW ~ Task1Dataset_VR)), file = VelocityDocument, append = TRUE)
      cat("\n\n", file = VelocityDocument, append = TRUE)
      
      MyPath <- file.path(Task1Folder_Velocity, paste("NVRW Task 1 Velocity ", "(",ColumnName,")", " ~ ", "VR Task 1 Velocity ", "(",ColumnName,")", ".png", sep = ""))
      png(file = MyPath, width = 960, height = 960)
      boxplot(Task1Dataset_NVRW, Task1Dataset_VR, main = TestName, ylab = "RMS Values", col = terrain.colors(3), xaxt = 'n')
      par(mar=c(6, 4.5, 4.1, 0.5), xpd=TRUE)
      legend("bottom", inset = c(0, -0.07),title = "Data Set", c(paste("NVRW Task 1 Velocity ", "(",ColumnName,")", sep = ""), paste("VR Task 1 Velocity ", "(",ColumnName,")", sep = "")), fil = terrain.colors(3), horiz = TRUE)
      dev.off()
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
      TestName <- paste("NVR Task 2 Velocity ", "(",ColumnName,")", " ~ ", "VR Task 2 Velocity ", "(",ColumnName,")", sep = "")
      capture.output(TestName, file = VelocityDocument, append = TRUE)
      capture.output(summary(aov(Task2Dataset_NVR ~ Task2Dataset_VR)), file = VelocityDocument, append = TRUE)
      cat("\n\n", file = VelocityDocument, append = TRUE)
      
      MyPath <- file.path(Task2Folder_Velocity, paste("NVR Task 2 Velocity ", "(",ColumnName,")", " ~ ", "VR Task 2 Velocity ", "(",ColumnName,")", ".png", sep = ""))
      png(file = MyPath, width = 960, height = 960)
      boxplot(Task2Dataset_NVR, Task2Dataset_VR, main = TestName, ylab = "RMS Values", col = terrain.colors(3), xaxt = 'n')
      par(mar=c(6, 4.5, 4.1, 0.5), xpd=TRUE)
      legend("bottom", inset = c(0, -0.07),title = "Data Set", c(paste("NVR Task 2 Velocity ", "(",ColumnName,")", sep = ""), paste("VR Task 2 Velocity  ", "(",ColumnName,")", sep = "")), fil = terrain.colors(3), horiz = TRUE)
      dev.off()
      
      TestName <- paste("NVR Task 2 Velocity ", "(",ColumnName,")", " ~ ", "NVRW Task 2 Velocity ", "(",ColumnName,")", sep = "")
      capture.output(TestName, file = VelocityDocument, append = TRUE)
      capture.output(summary(aov(Task2Dataset_NVR ~ Task2Dataset_NVRW)), file = VelocityDocument, append = TRUE)
      cat("\n\n", file = VelocityDocument, append = TRUE)
      
      MyPath <- file.path(Task2Folder_Velocity, paste("NVR Task 2 Velocity ", "(",ColumnName,")", " ~ ", "NVRW Task 2 Velocity ", "(",ColumnName,")", ".png", sep = ""))
      png(file = MyPath, width = 960, height = 960)
      boxplot(Task2Dataset_NVR, Task2Dataset_NVRW, main = TestName, ylab = "RMS Values", col = terrain.colors(3), xaxt = 'n')
      par(mar=c(6, 4.5, 4.1, 0.5), xpd=TRUE)
      legend("bottom", inset = c(0, -0.07),title = "Data Set", c(paste("NVR Task 2 Velocity  ", "(",ColumnName,")", sep = ""), paste("NVRW Task 2 Velocity  ", "(",ColumnName,")", sep = "")), fil = terrain.colors(3), horiz = TRUE)
      dev.off()
      
      TestName <- paste("NVRW Task 2 Velocity ", "(",ColumnName,")", " ~ ", "VR Task 2 Velocity ", "(",ColumnName,")", sep = "")
      capture.output(TestName, file = VelocityDocument, append = TRUE)
      capture.output(summary(aov(Task2Dataset_NVRW ~ Task2Dataset_VR)), file = VelocityDocument, append = TRUE)
      cat("\n\n", file = VelocityDocument, append = TRUE)
      
      MyPath <- file.path(Task2Folder_Velocity, paste("NVRW Task 2 Velocity ", "(",ColumnName,")", " ~ ", "VR Task 2 Velocity ", "(",ColumnName,")", ".png", sep = ""))
      png(file = MyPath, width = 960, height = 960)
      boxplot(Task2Dataset_NVRW, Task2Dataset_VR, main = TestName, ylab = "RMS Values", col = terrain.colors(3), xaxt = 'n')
      par(mar=c(6, 4.5, 4.1, 0.5), xpd=TRUE)
      legend("bottom", inset = c(0, -0.07),title = "Data Set", c(paste("NVRW Task 2 Velocity  ", "(",ColumnName,")", sep = ""), paste("VR Task 2 Velocity  ", "(",ColumnName,")", sep = "")), fil = terrain.colors(3), horiz = TRUE)
      dev.off()
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
      TestName <- paste("NVR Task 3 Velocity ", "(",ColumnName,")", " ~ ", "VR Task 3 Velocity ", "(",ColumnName,")", sep = "")
      capture.output(TestName, file = VelocityDocument, append = TRUE)
      capture.output(summary(aov(Task3Dataset_NVR ~ Task3Dataset_VR)), file = VelocityDocument, append = TRUE)
      cat("\n\n", file = VelocityDocument, append = TRUE)
      
      MyPath <- file.path(Task3Folder_Velocity, paste("NVR Task 3 Velocity ", "(",ColumnName,")", " ~ ", "VR Task 3 Velocity", "(",ColumnName,")", ".png", sep = ""))
      png(file = MyPath, width = 960, height = 960)
      boxplot(Task3Dataset_NVR, Task3Dataset_VR, main = TestName, ylab = "RMS Values", col = terrain.colors(3), xaxt = 'n')
      par(mar=c(6, 4.5, 4.1, 0.5), xpd=TRUE)
      legend("bottom", inset = c(0, -0.07),title = "Data Set", c(paste("NVR Task 3 Velocity  ", "(",ColumnName,")", sep = ""), paste("VR Task 3 Velocity  ", "(",ColumnName,")", sep = "")), fil = terrain.colors(3), horiz = TRUE)
      dev.off()
      
      TestName <- paste("NVR Task 3 Velocity ", "(",ColumnName,")", " ~ ", "NVRW Task 3 Velocity ", "(",ColumnName,")", sep = "")
      capture.output(TestName, file = VelocityDocument, append = TRUE)
      capture.output(summary(aov(Task3Dataset_NVR ~ Task3Dataset_NVRW)), file = VelocityDocument, append = TRUE)
      cat("\n\n", file = AccelerationDocument, append = TRUE)
      
      MyPath <- file.path(Task3Folder_Velocity, paste("NVR Task 3 Velocity ", "(",ColumnName,")", " ~ ", "NVRW Task 3 Velocity", "(",ColumnName,")", ".png", sep = ""))
      png(file = MyPath, width = 960, height = 960)
      boxplot(Task3Dataset_NVR, Task3Dataset_NVRW, main = TestName, ylab = "RMS Values", col = terrain.colors(3), xaxt = 'n')
      par(mar=c(6, 4.5, 4.1, 0.5), xpd=TRUE)
      legend("bottom", inset = c(0, -0.07),title = "Data Set", c(paste("NVR Task 3 Velocity  ", "(",ColumnName,")", sep = ""), paste("NVRW Task 3 Velocity  ", "(",ColumnName,")", sep = "")), fil = terrain.colors(3), horiz = TRUE)
      dev.off()
      
      TestName <- paste("NVRW Task 3 Velocity ", "(",ColumnName,")", " ~ ", "VR Task 3 Velocity ", "(",ColumnName,")", sep = "")
      capture.output(TestName, file = VelocityDocument, append = TRUE)
      capture.output(summary(aov(Task3Dataset_NVRW ~ Task3Dataset_VR)), file = VelocityDocument, append = TRUE)
      cat("\n\n", file = AccelerationDocument, append = TRUE)
      
      MyPath <- file.path(Task3Folder_Velocity, paste("NVRW Task 3 Velocity ", "(",ColumnName,")", " ~ ", "VR Task 3 Velocity", "(",ColumnName,")", ".png", sep = ""))
      png(file = MyPath, width = 960, height = 960)
      boxplot(Task3Dataset_NVRW, Task3Dataset_VR, main = TestName, ylab = "RMS Values", col = terrain.colors(3), xaxt = 'n')
      par(mar=c(6, 4.5, 4.1, 0.5), xpd=TRUE)
      legend("bottom", inset = c(0, -0.07),title = "Data Set", c(paste("NVRW Task 3 Velocity  ", "(",ColumnName,")", sep = ""), paste("VR Task 3 Velocity ", "(",ColumnName,")", sep = "")), fil = terrain.colors(3), horiz = TRUE)
      dev.off()
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
      TestName <- paste("NVR Task 1 TimeSeries ", "(",ColumnName,")", " ~ ", "VR Task 1 TimeSeries ", "(",ColumnName,")", sep = "")
      capture.output(TestName, file = TimeSeriesDocument, append = TRUE)
      capture.output(summary(aov(Task1Dataset_NVR ~ Task1Dataset_VR)), file = TimeSeriesDocument, append = TRUE)
      cat("\n\n", file = TimeSeriesDocument, append = TRUE)
      
      MyPath <- file.path(Task1Folder_TimeSeries, paste("NVR Task 1 TimeSeries ", "(",ColumnName,")", " ~ ", "VR Task 1 TimeSeries", "(",ColumnName,")", ".png", sep = ""))
      png(file = MyPath, width = 960, height = 960)
      boxplot(Task1Dataset_NVR, Task1Dataset_VR, main = TestName, ylab = "RMS Values", col = terrain.colors(3), xaxt = 'n')
      par(mar=c(6, 4.5, 4.1, 0.5), xpd=TRUE)
      legend("bottom", inset = c(0, -0.07),title = "Data Set", c(paste("NVR Task 1 TimeSeries  ", "(",ColumnName,")", sep = ""), paste("VR Task 1 TimeSeries ", "(",ColumnName,")", sep = "")), fil = terrain.colors(3), horiz = TRUE)
      dev.off()
      
      TestName <- paste("NVR Task 1 TimeSeries ", "(",ColumnName,")", " ~ ", "NVRW Task 1 TimeSeries ", "(",ColumnName,")", sep = "")
      capture.output(TestName, file = TimeSeriesDocument, append = TRUE)
      capture.output(summary(aov(Task1Dataset_NVR ~ Task1Dataset_NVRW)), file = TimeSeriesDocument, append = TRUE)
      cat("\n\n", file = TimeSeriesDocument, append = TRUE)
      
      MyPath <- file.path(Task1Folder_TimeSeries, paste("NVR Task 1 TimeSeries ", "(",ColumnName,")", " ~ ", "NVRW Task 1 TimeSeries", "(",ColumnName,")", ".png", sep = ""))
      png(file = MyPath, width = 960, height = 960)
      boxplot(Task1Dataset_NVR, Task1Dataset_NVRW, main = TestName, ylab = "RMS Values", col = terrain.colors(3), xaxt = 'n')
      par(mar=c(6, 4.5, 4.1, 0.5), xpd=TRUE)
      legend("bottom", inset = c(0, -0.07),title = "Data Set", c(paste("NVR Task 1 TimeSeries  ", "(",ColumnName,")", sep = ""), paste("NVRW Task 1 TimeSeries ", "(",ColumnName,")", sep = "")), fil = terrain.colors(3), horiz = TRUE)
      dev.off()
      
      TestName <- paste("NVRW Task 1 TimeSeries ", "(",ColumnName,")", " ~ ", "VR Task 1 TimeSeries ", "(",ColumnName,")", sep = "")
      capture.output(TestName, file = TimeSeriesDocument, append = TRUE)
      capture.output(summary(aov(Task1Dataset_NVRW ~ Task1Dataset_VR)), file = TimeSeriesDocument, append = TRUE)
      cat("\n\n", file = TimeSeriesDocument, append = TRUE)
      
      MyPath <- file.path(Task1Folder_TimeSeries, paste("NVRW Task 1 TimeSeries ", "(",ColumnName,")", " ~ ", "VR Task 1 TimeSeries", "(",ColumnName,")", ".png", sep = ""))
      png(file = MyPath, width = 960, height = 960)
      boxplot(Task1Dataset_NVRW, Task1Dataset_VR, main = TestName, ylab = "RMS Values", col = terrain.colors(3), xaxt = 'n')
      par(mar=c(6, 4.5, 4.1, 0.5), xpd=TRUE)
      legend("bottom", inset = c(0, -0.07),title = "Data Set", c(paste("NVRW Task 1 TimeSeries  ", "(",ColumnName,")", sep = ""), paste("VR Task 1 TimeSeries", "(",ColumnName,")", sep = "")), fil = terrain.colors(3), horiz = TRUE)
      dev.off()
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
      TestName <- paste("NVR Task 2 TimeSeries ", "(",ColumnName,")", " ~ ", "VR Task 2 TimeSeries ", "(",ColumnName,")", sep = "")
      capture.output(TestName, file = TimeSeriesDocument, append = TRUE)
      capture.output(summary(aov(Task2Dataset_NVR ~ Task2Dataset_VR)), file = TimeSeriesDocument, append = TRUE)
      cat("\n\n", file = TimeSeriesDocument, append = TRUE)
      
      MyPath <- file.path(Task2Folder_TimeSeries, paste("NVR Task 2 TimeSeries ", "(",ColumnName,")", " ~ ", "VR Task 2 TimeSeries", "(",ColumnName,")", ".png", sep = ""))
      png(file = MyPath, width = 960, height = 960)
      boxplot(Task2Dataset_NVR, Task2Dataset_VR, main = TestName, ylab = "RMS Values", col = terrain.colors(3), xaxt = 'n')
      par(mar=c(6, 4.5, 4.1, 0.5), xpd=TRUE)
      legend("bottom", inset = c(0, -0.07),title = "Data Set", c(paste("NVR Task 2 TimeSeries  ", "(",ColumnName,")", sep = ""), paste("VR Task 2 TimeSeries", "(",ColumnName,")", sep = "")), fil = terrain.colors(3), horiz = TRUE)
      dev.off()
      
      TestName <- paste("NVR Task 2 TimeSeries ", "(",ColumnName,")", " ~ ", "NVRW Task 2 TimeSeries ", "(",ColumnName,")", sep = "")
      capture.output(TestName, file = TimeSeriesDocument, append = TRUE)
      capture.output(summary(aov(Task2Dataset_NVR ~ Task2Dataset_NVRW)), file = TimeSeriesDocument, append = TRUE)
      cat("\n\n", file = TimeSeriesDocument, append = TRUE)
      
      MyPath <- file.path(Task2Folder_TimeSeries, paste("NVR Task 2 TimeSeries ", "(",ColumnName,")", " ~ ", "NVRW Task 2 TimeSeries", "(",ColumnName,")", ".png", sep = ""))
      png(file = MyPath, width = 960, height = 960)
      boxplot(Task2Dataset_NVR, Task2Dataset_NVRW, main = TestName, ylab = "RMS Values", col = terrain.colors(3), xaxt = 'n')
      par(mar=c(6, 4.5, 4.1, 0.5), xpd=TRUE)
      legend("bottom", inset = c(0, -0.07),title = "Data Set", c(paste("NVR Task 2 TimeSeries  ", "(",ColumnName,")", sep = ""), paste("NVRW Task 2 TimeSeries", "(",ColumnName,")", sep = "")), fil = terrain.colors(3), horiz = TRUE)
      dev.off()
      
      TestName <- paste("NVRW Task 2 TimeSeries ", "(",ColumnName,")", " ~ ", "VR Task 2 TimeSeries ", "(",ColumnName,")", sep = "")
      capture.output(TestName, file = TimeSeriesDocument, append = TRUE)
      capture.output(summary(aov(Task2Dataset_NVRW ~ Task2Dataset_VR)), file = TimeSeriesDocument, append = TRUE)
      cat("\n\n", file = TimeSeriesDocument, append = TRUE)
      
      MyPath <- file.path(Task2Folder_TimeSeries, paste("NVRW Task 2 TimeSeries ", "(",ColumnName,")", " ~ ", "VR Task 2 TimeSeries", "(",ColumnName,")", ".png", sep = ""))
      png(file = MyPath, width = 960, height = 960)
      boxplot(Task2Dataset_NVRW, Task2Dataset_VR, main = TestName, ylab = "RMS Values", col = terrain.colors(3), xaxt = 'n')
      par(mar=c(6, 4.5, 4.1, 0.5), xpd=TRUE)
      legend("bottom", inset = c(0, -0.07),title = "Data Set", c(paste("NVRW Task 2 TimeSeries  ", "(",ColumnName,")", sep = ""), paste("VR Task 2 TimeSeries", "(",ColumnName,")", sep = "")), fil = terrain.colors(3), horiz = TRUE)
      dev.off()
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
      TestName <- paste("NVR Task 3 TimeSeries ", "(",ColumnName,")", " ~ ", "VR Task 3 TimeSeries ", "(",ColumnName,")", sep = "")
      capture.output(TestName, file = TimeSeriesDocument, append = TRUE)
      capture.output(summary(aov(Task3Dataset_NVR ~ Task3Dataset_VR)), file = TimeSeriesDocument, append = TRUE)
      cat("\n\n", file = TimeSeriesDocument, append = TRUE)
      
      MyPath <- file.path(Task3Folder_TimeSeries, paste("NVR Task 3 TimeSeries ", "(",ColumnName,")", " ~ ", "VR Task 3 TimeSeries", "(",ColumnName,")", ".png", sep = ""))
      png(file = MyPath, width = 960, height = 960)
      boxplot(Task3Dataset_NVR, Task3Dataset_VR, main = TestName, ylab = "RMS Values", col = terrain.colors(3), xaxt = 'n')
      par(mar=c(6, 4.5, 4.1, 0.5), xpd=TRUE)
      legend("bottom", inset = c(0, -0.07),title = "Data Set", c(paste("NVR Task 3 TimeSeries  ", "(",ColumnName,")", sep = ""), paste("VR Task 3 TimeSeries", "(",ColumnName,")", sep = "")), fil = terrain.colors(3), horiz = TRUE)
      dev.off()
      
      TestName <- paste("NVR Task 3 TimeSeries ", "(",ColumnName,")", " ~ ", "NVRW Task 3 TimeSeries ", "(",ColumnName,")", sep = "")
      capture.output(TestName, file = TimeSeriesDocument, append = TRUE)
      capture.output(summary(aov(Task3Dataset_NVR ~ Task3Dataset_NVRW)), file = TimeSeriesDocument, append = TRUE)
      cat("\n\n", file = TimeSeriesDocument, append = TRUE)
      
      MyPath <- file.path(Task3Folder_TimeSeries, paste("NVR Task 3 TimeSeries ", "(",ColumnName,")", " ~ ", "NVRW Task 3 TimeSeries", "(",ColumnName,")", ".png", sep = ""))
      png(file = MyPath, width = 960, height = 960)
      boxplot(Task3Dataset_NVR, Task3Dataset_NVRW, main = TestName, ylab = "RMS Values", col = terrain.colors(3), xaxt = 'n')
      par(mar=c(6, 4.5, 4.1, 0.5), xpd=TRUE)
      legend("bottom", inset = c(0, -0.07),title = "Data Set", c(paste("NVR Task 3 TimeSeries  ", "(",ColumnName,")", sep = ""), paste("NVRW Task 3 TimeSeries", "(",ColumnName,")", sep = "")), fil = terrain.colors(3), horiz = TRUE)
      dev.off()
      
      TestName <- paste("NVRW Task 3 TimeSeries ", "(",ColumnName,")", " ~ ", "VR Task 3 TimeSeries ", "(",ColumnName,")", sep = "")
      capture.output(TestName, file = TimeSeriesDocument, append = TRUE)
      capture.output(summary(aov(Task3Dataset_NVRW ~ Task3Dataset_VR)), file = TimeSeriesDocument, append = TRUE)
      cat("\n\n", file = TimeSeriesDocument, append = TRUE)
      
      MyPath <- file.path(Task3Folder_TimeSeries, paste("NVRW Task 3 TimeSeries ", "(",ColumnName,")", " ~ ", "VR Task 3 TimeSeries", "(",ColumnName,")", ".png", sep = ""))
      png(file = MyPath, width = 960, height = 960)
      boxplot(Task3Dataset_NVRW, Task3Dataset_VR, main = TestName, ylab = "RMS Values", col = terrain.colors(3), xaxt = 'n')
      par(mar=c(6, 4.5, 4.1, 0.5), xpd=TRUE)
      legend("bottom", inset = c(0, -0.07),title = "Data Set", c(paste("NVRW Task 3 TimeSeries  ", "(",ColumnName,")", sep = ""), paste("VR Task 3 TimeSeries", "(",ColumnName,")", sep = "")), fil = terrain.colors(3), horiz = TRUE)
      dev.off()
    }
  }
}
rm(AccelerationDocument, VelocityDocument, TimeSeriesDocument, ColumnName, q, r, Task1Dataset_NVR, Task2Dataset_NVR, Task3Dataset_NVR
   ,Task1Dataset_VR, Task2Dataset_VR, Task3Dataset_VR, Task1Dataset_NVRW, Task2Dataset_NVRW, Task3Dataset_NVRW, TestName)

print("Completed")


















