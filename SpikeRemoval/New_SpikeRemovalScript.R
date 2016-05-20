ParticipantNumber = 21#Number of particpants in the study.#21
DataSetsPerPartcipant = 4#Number of datasets in the .csv file for each participant.
SpikeLimit = 3#The max jump this function will allow before it removes/reduces it.

for(i in 1:9)
{
  DataToUse <- NULL
  NameVector <- NULL#This stores the names of each created dataset so we can put them in a data frame.
  InterpolatedNameVector <- NULL#This stores the name of each created interpolated dataset.
  InterpolatedVelocityNameVector <- NULL
  InterpolatedAccelerationNameVector <- NULL
  
  if(i == 1)
  {
    TaskName = "NVRTask1"
    
    DataToUse <- read.csv("C:/Users/Jack/OneDrive/MSc/My Studies/Head Movement Study/Results Data/Time Normalised .csv files/NVR Task 1 Time Normalised.csv", header = TRUE)
    dir.create("C:/Users/Jack/Desktop/NVR Task 1")
    dir.create("C:/Users/Jack/Desktop/NVR Task 1/Time Series")
    dir.create("C:/Users/Jack/Desktop/NVR Task 1/Time Series (Repeated Data Removed)")
    dir.create("C:/Users/Jack/Desktop/NVR Task 1/Velocity Plots")
    dir.create("C:/Users/Jack/Desktop/NVR Task 1/Acceleration Plots")
    
    BaseFolder <- "C:/Users/Jack/Desktop/NVRW Task 1"
    TimeSeriesFolder <- "C:/Users/Jack/Desktop/NVR Task 1/Time Series"
    UniqueTimeSeriesFolder <- "C:/Users/Jack/Desktop/NVR Task 1/Time Series (Repeated Data Removed)"
    VelocityPlotFolder <- "C:/Users/Jack/Desktop/NVR Task 1/Velocity Plots"
    AccelerationPlotFolder <- "C:/Users/Jack/Desktop/NVR Task 1/Acceleration Plots"
    print("Created NVR Task 1")
  }
  if(i == 2)
  {
    TaskName = "NVRTask2"
    
    DataToUse <- read.csv("C:/Users/Jack/OneDrive/MSc/My Studies/Head Movement Study/Results Data/Time Normalised .csv files/NVR Task 2 Time Normalised.csv", header = TRUE)
    dir.create("C:/Users/Jack/Desktop/NVR Task 2")
    dir.create("C:/Users/Jack/Desktop/NVR Task 2/Time Series")
    dir.create("C:/Users/Jack/Desktop/NVR Task 2/Time Series (Repeated Data Removed)")
    dir.create("C:/Users/Jack/Desktop/NVR Task 2/Velocity Plots")
    dir.create("C:/Users/Jack/Desktop/NVR Task 2/Acceleration Plots")
    
    BaseFolder <- "C:/Users/Jack/Desktop/NVRW Task 2"
    TimeSeriesFolder <- "C:/Users/Jack/Desktop/NVR Task 2/Time Series"
    UniqueTimeSeriesFolder <- "C:/Users/Jack/Desktop/NVR Task 2/Time Series (Repeated Data Removed)"
    VelocityPlotFolder <- "C:/Users/Jack/Desktop/NVR Task 2/Velocity Plots"
    AccelerationPlotFolder <- "C:/Users/Jack/Desktop/NVR Task 2/Acceleration Plots"
    print("Created NVR Task 2")
  }
  if(i == 3)
  {
    TaskName = "NVRTask3"
    
    DataToUse <- read.csv("C:/Users/Jack/OneDrive/MSc/My Studies/Head Movement Study/Results Data/Time Normalised .csv files/NVR Task 3 Time Normalised.csv", header = TRUE)
    dir.create("C:/Users/Jack/Desktop/NVR Task 3")
    dir.create("C:/Users/Jack/Desktop/NVR Task 3/Time Series")
    dir.create("C:/Users/Jack/Desktop/NVR Task 3/Time Series (Repeated Data Removed)")
    dir.create("C:/Users/Jack/Desktop/NVR Task 3/Velocity Plots")
    dir.create("C:/Users/Jack/Desktop/NVR Task 3/Acceleration Plots")
    
    BaseFolder <- "C:/Users/Jack/Desktop/NVR Task 3"
    TimeSeriesFolder <- "C:/Users/Jack/Desktop/NVR Task 3/Time Series"
    UniqueTimeSeriesFolder <- "C:/Users/Jack/Desktop/NVR Task 3/Time Series (Repeated Data Removed)"
    VelocityPlotFolder <- "C:/Users/Jack/Desktop/NVR Task 3/Velocity Plots"
    AccelerationPlotFolder <- "C:/Users/Jack/Desktop/NVR Task 3/Acceleration Plots"
    print("Created NVR Task 3")
  }
  if(i == 4)
  {
    TaskName = "VRTask1"
    
    DataToUse <- read.csv("C:/Users/Jack/OneDrive/MSc/My Studies/Head Movement Study/Results Data/Time Normalised .csv files/VR Task 1 Time Normalised.csv", header = TRUE)
    dir.create("C:/Users/Jack/Desktop/VR Task 1")
    dir.create("C:/Users/Jack/Desktop/VR Task 1/Time Series")
    dir.create("C:/Users/Jack/Desktop/VR Task 1/Time Series (Repeated Data Removed)")
    dir.create("C:/Users/Jack/Desktop/VR Task 1/Velocity Plots")
    dir.create("C:/Users/Jack/Desktop/VR Task 1/Acceleration Plots")
    
    BaseFolder <- "C:/Users/Jack/Desktop/VR Task 1"
    TimeSeriesFolder <- "C:/Users/Jack/Desktop/VR Task 1/Time Series"
    UniqueTimeSeriesFolder <- "C:/Users/Jack/Desktop/VR Task 1/Time Series (Repeated Data Removed)"
    VelocityPlotFolder <- "C:/Users/Jack/Desktop/VR Task 1/Velocity Plots"
    AccelerationPlotFolder <- "C:/Users/Jack/Desktop/VR Task 1/Acceleration Plots"
    print("Created VR Task 1")
  }
  if(i == 5)
  {
    TaskName = "VRTask2"
    
    DataToUse <- read.csv("C:/Users/Jack/OneDrive/MSc/My Studies/Head Movement Study/Results Data/Time Normalised .csv files/VR Task 2 Time Normalised.csv", header = TRUE)
    dir.create("C:/Users/Jack/Desktop/VR Task 2")
    dir.create("C:/Users/Jack/Desktop/VR Task 2/Time Series")
    dir.create("C:/Users/Jack/Desktop/VR Task 2/Time Series (Repeated Data Removed)")
    dir.create("C:/Users/Jack/Desktop/VR Task 2/Velocity Plots")
    dir.create("C:/Users/Jack/Desktop/VR Task 2/Acceleration Plots")
    
    BaseFolder <- "C:/Users/Jack/Desktop/VR Task 2"
    TimeSeriesFolder <- "C:/Users/Jack/Desktop/VR Task 2/Time Series"
    UniqueTimeSeriesFolder <- "C:/Users/Jack/Desktop/VR Task 2/Time Series (Repeated Data Removed)"
    VelocityPlotFolder <- "C:/Users/Jack/Desktop/VR Task 2/Velocity Plots"
    AccelerationPlotFolder <- "C:/Users/Jack/Desktop/VR Task 2/Acceleration Plots"
    print("Created VR Task 2")
  }
  if(i == 6)
  {
    TaskName = "VRTask3"
    
    DataToUse <- read.csv("C:/Users/Jack/OneDrive/MSc/My Studies/Head Movement Study/Results Data/Time Normalised .csv files/VR Task 3 Time Normalised.csv", header = TRUE)
    dir.create("C:/Users/Jack/Desktop/VR Task 3")
    dir.create("C:/Users/Jack/Desktop/VR Task 3/Time Series")
    dir.create("C:/Users/Jack/Desktop/VR Task 3/Time Series (Repeated Data Removed)")
    dir.create("C:/Users/Jack/Desktop/VR Task 3/Velocity Plots")
    dir.create("C:/Users/Jack/Desktop/VR Task 3/Acceleration Plots")
    
    BaseFolder <- "C:/Users/Jack/Desktop/VR Task 3"
    TimeSeriesFolder <- "C:/Users/Jack/Desktop/VR Task 3/Time Series"
    UniqueTimeSeriesFolder <- "C:/Users/Jack/Desktop/VR Task 3/Time Series (Repeated Data Removed)"
    VelocityPlotFolder <- "C:/Users/Jack/Desktop/VR Task 3/Velocity Plots"
    AccelerationPlotFolder <- "C:/Users/Jack/Desktop/VR Task 3/Acceleration Plots"
    print("Created VR Task 3")
    
  }
  if(i == 7)
  {
    TaskName = "NVRWTask1"
    
    DataToUse <- read.csv("C:/Users/Jack/OneDrive/MSc/My Studies/Head Movement Study/Results Data/Time Normalised .csv files/NVRW Task 1 Time Normalised.csv", header = TRUE)
    dir.create("C:/Users/Jack/Desktop/NVRW Task 1")
    dir.create("C:/Users/Jack/Desktop/NVRW Task 1/Time Series")
    dir.create("C:/Users/Jack/Desktop/NVRW Task 1/Time Series (Repeated Data Removed)")
    dir.create("C:/Users/Jack/Desktop/NVRW Task 1/Velocity Plots")
    dir.create("C:/Users/Jack/Desktop/NVRW Task 1/Acceleration Plots")
    
    BaseFolder <- "C:/Users/Jack/Desktop/NVRW Task 1"
    TimeSeriesFolder <- "C:/Users/Jack/Desktop/NVRW Task 1/Time Series"
    UniqueTimeSeriesFolder <- "C:/Users/Jack/Desktop/NVRW Task 1/Time Series (Repeated Data Removed)"
    VelocityPlotFolder <- "C:/Users/Jack/Desktop/NVRW Task 1/Velocity Plots"
    AccelerationPlotFolder <- "C:/Users/Jack/Desktop/NVRW Task 1/Acceleration Plots"
    print("Created NVRW Task 1")
  }
  if(i == 8)
  {
    TaskName = "NVRWTask2"
    
    DataToUse <- read.csv("C:/Users/Jack/OneDrive/MSc/My Studies/Head Movement Study/Results Data/Time Normalised .csv files/NVRW Task 2 Time Normalised.csv", header = TRUE)
    dir.create("C:/Users/Jack/Desktop/NVRW Task 2")
    dir.create("C:/Users/Jack/Desktop/NVRW Task 2/Time Series")
    dir.create("C:/Users/Jack/Desktop/NVRW Task 2/Time Series (Repeated Data Removed)")
    dir.create("C:/Users/Jack/Desktop/NVRW Task 2/Velocity Plots")
    dir.create("C:/Users/Jack/Desktop/NVRW Task 2/Acceleration Plots")
    
    BaseFolder <- "C:/Users/Jack/Desktop/NVRW Task 2"
    TimeSeriesFolder <- "C:/Users/Jack/Desktop/NVRW Task 2/Time Series"
    UniqueTimeSeriesFolder <- "C:/Users/Jack/Desktop/NVRW Task 2/Time Series (Repeated Data Removed)"
    VelocityPlotFolder <- "C:/Users/Jack/Desktop/NVRW Task 2/Velocity Plots"
    AccelerationPlotFolder <- "C:/Users/Jack/Desktop/NVRW Task 2/Acceleration Plots"
    print("Created NVRW Task 2")
    
  }
  if(i == 9)
  {
    TaskName = "NVRWTask3"
    
    DataToUse <- read.csv("C:/Users/Jack/OneDrive/MSc/My Studies/Head Movement Study/Results Data/Time Normalised .csv files/NVRW Task 3 Time Normalised.csv", header = TRUE)
    dir.create("C:/Users/Jack/Desktop/NVRW Task 3")
    dir.create("C:/Users/Jack/Desktop/NVRW Task 3/Time Series")
    dir.create("C:/Users/Jack/Desktop/NVRW Task 3/Time Series (Repeated Data Removed)")
    dir.create("C:/Users/Jack/Desktop/NVRW Task 3/Velocity Plots")
    dir.create("C:/Users/Jack/Desktop/NVRW Task 3/Acceleration Plots")
    
    BaseFolder <- "C:/Users/Jack/Desktop/NVRW Task 3"
    TimeSeriesFolder <- "C:/Users/Jack/Desktop/NVRW Task 3/Time Series"
    UniqueTimeSeriesFolder <- "C:/Users/Jack/Desktop/NVRW Task 3/Time Series (Repeated Data Removed)"
    VelocityPlotFolder <- "C:/Users/Jack/Desktop/NVRW Task 3/Velocity Plots"
    AccelerationPlotFolder <- "C:/Users/Jack/Desktop/NVRW Task 3/Acceleration Plots"
    print("Created NVRW Task 3")
  }
  
  ParticipantCount = 1
  FileNameCount = 1
  ParticipantIncrement = 0
  for(j in 1:ncol(DataToUse))#4
  {
    if(ParticipantIncrement == 4)#j %% 4 == 0
    {
      ParticipantCount <- ParticipantCount + 1
      ParticipantIncrement  = 0
    }
    CurrentData <- na.omit(DataToUse[j])#This specifies the column that will be selected#DataToUse
    LoopAmount <- nrow(CurrentData)
    LoopAmount <- LoopAmount - 1;
    
    #BUG WAS CAUSE BY TWO LOOPS BEING CALLED J, THIS MEANT THAT THE J VALUE WAS BEING ICREASED BY WAY TOO MUCH FOR SOME REASON.
    for(k in 1:LoopAmount)
    {
      #Finds the data up spikes.
      if((CurrentData[k + 1, c(1)] - CurrentData[k, c(1)]) > SpikeLimit)
      {
        Gap <- CurrentData[k + 1, c(1)] - CurrentData[k, c(1)]
        cat("Positive outlier found between cells", k, "and", k+1, "jumps from", CurrentData[k, c(1)], "to", CurrentData[k + 1, c(1)], "with a gap of", CurrentData[k + 1, c(1)] - CurrentData[k, c(1)], "\n")
        
        for(l in k+1:LoopAmount)
        {
          CurrentData [l, c(1)] <- CurrentData[l, c(1)] - Gap
        }
      }
      
      #Finds the data down spikes.
      if((CurrentData[k, c(1)] - CurrentData[k + 1, c(1)]) > SpikeLimit)
      {
        Gap <- CurrentData[k, c(1)] - CurrentData[k + 1, c(1)]
        cat("Negative outlier found between cells", k, "and", k+1, "drops from", CurrentData[k, c(1)], "to", CurrentData[k + 1, c(1)], "with a gap of", CurrentData[k, c(1)] - CurrentData[k + 1, c(1)], "\n")
        
        for(l in k+1:LoopAmount)
        {
          CurrentData [l, c(1)] <- CurrentData[l, c(1)] + Gap
        }
      }
    }
    DataName <- paste("CurrentData", j, sep="")
    assign(DataName, na.omit(CurrentData))#Cuts the "NA" out of the despiked dataset.
    NameVector <- c(NameVector, DataName)
    
    FilteredData <- na.omit(CurrentData[1])#Removes all NA values from CurrentData.
    
    #Interpolation of repeated values.
    PreviousValue <- as.numeric(FilteredData[1, c(1)])+10000#Make look better.
    PreviousIndex <- 0
    for(m in 1:nrow(FilteredData))#Loops through each row of the FilteredData.
    {
      PresentValue = as.numeric(FilteredData[m, c(1)])
      if(PresentValue != PreviousValue )
      {
        GapSize <- m - PreviousIndex
        if(GapSize > 1) 
        {
          #need to interpolate between previous value and present value in the gaps
          Start <- PreviousIndex + 1
          End <- m - 1
          if (Start <= End)
          {
            #should interpolate
            Diff <- PresentValue - PreviousValue
            DifferencePerRow <- Diff / GapSize
            Value <- PreviousValue + DifferencePerRow
            for(n in Start:End)
            {
              FilteredData[n, c(1)] = Value
              Value = Value + DifferencePerRow
            }
          }
        }
        PreviousValue = PresentValue
        PreviousIndex = m
      }
      else
      {
        FilteredData[m, c(1)] = PreviousValue #Sets duplicates at the end of the column (No value after with a different value) to the previous column value.
      }
    }
    
    Velocity <- diff(na.omit(FilteredData[, c(1)]))
    Acceleration <- diff(diff(na.omit(FilteredData[, c(1)])))
    
    if(FileNameCount == 1)
    {
      RecordedData = "Heading"
    }
    if(FileNameCount == 2)
    {
      RecordedData = "Roll"
    }
    if(FileNameCount ==3)
    {
      RecordedData = "Pitch"
    }
    if(FileNameCount == 4)
    {
      RecordedData = "Time"
      FileNameCount = 0
    }

    MyPath <- file.path(UniqueTimeSeriesFolder, paste("Participant", ParticipantCount, "(", RecordedData, ")",".png", sep = ""))
    png(file = MyPath)
    plot.ts(FilteredData, main = paste("Linear Interpolation of unique data points ","(",RecordedData,")", sep = ""), sub = paste("Participant ", ParticipantCount), xlab = "Time (Interpolated to 60 seconds)", ylab = "Degrees")
    dev.off()
    
    MyPath <- file.path(VelocityPlotFolder, paste("Participant", ParticipantCount, "(", RecordedData, ")",".png", sep = ""))
    png(file = MyPath)
    plot.ts(Velocity, main = paste("Linear Interpolation of velocity ","(",RecordedData,")", sep = ""),  sub = paste("Participant ", ParticipantCount), xlab = "Time (Interpolated to 60 seconds)", ylab = "Degrees")
    dev.off()
    
    MyPath <- file.path(AccelerationPlotFolder, paste("Participant", ParticipantCount, "(", RecordedData, ")",".png", sep = ""))
    png(file = MyPath)
    plot.ts(Acceleration, main = paste("Linear Interpolation of acceleration ","(",RecordedData,")", sep = ""),  sub = paste("Participant ", ParticipantCount), xlab = "Time (Interpolated to 60 seconds)", ylab = "Degrees")
    dev.off()
    
    #Creates the data frame for each participants interpolated data after the script has been completed.
    CurrentInterpolated <- FilteredData
    InterpolatedDataName <- paste("InterpolatedData", j, sep = "")
    assign(InterpolatedDataName, na.omit(CurrentInterpolated))
    InterpolatedNameVector <- c(InterpolatedNameVector, InterpolatedDataName)
    
    #Creates a data frame for the velocity of each participant so we can use the data later.
    CurrentInterpolatedVelocity <- data.frame(diff(FilteredData[, c(1)]))
    InterpolatedVelocityDataName <- paste("InterpolatedDataVelocity", j, sep = "")
    assign(InterpolatedVelocityDataName, na.omit(CurrentInterpolatedVelocity))
    InterpolatedVelocityNameVector <- c(InterpolatedVelocityNameVector, InterpolatedVelocityDataName)
    
    #creates a data frame for the acceleration pf each participant so we can use the data later.
    CurrentInterpolatedAcceleration <- data.frame(diff(diff(FilteredData[, c(1)])))
    InterpolatedAccelerationDataName <- paste("InterpolatedDataAcceleration", j, sep = "")
    assign(InterpolatedAccelerationDataName, na.omit(CurrentInterpolatedAcceleration))
    InterpolatedAccelerationNameVector <- c(InterpolatedAccelerationNameVector, InterpolatedAccelerationDataName)
    
    #Clears variables just to be sure.
    Gap <-NULL
    CurrentData<-NULL
    
    FileNameCount <- FileNameCount + 1
    ParticipantIncrement <- ParticipantIncrement + 1
  }
  ColumnNumber  = 1
  for(i in 1:ParticipantNumber)
  {
    DataName <- paste("Participant", i, sep="")
    InterpolatedDataName <- paste("U_InterpolatedParticipant", i, "_", TaskName, sep = "")#U = Unique
    InterpolatedVelocityDataName <- paste("V_InterpolatedParticipant", i, "_", TaskName, sep = "")#V = Velocity
    InterpolatedAccelerationDataName <- paste("A_InterpolatedParticipant", i, "_", TaskName, sep = "")#A = Acceleration

    assign(DataName, data.frame(get(NameVector[ColumnNumber]), get(NameVector[ColumnNumber+1]), get(NameVector[ColumnNumber+2]), get(NameVector[ColumnNumber+3])))
    assign(InterpolatedDataName, data.frame(get(InterpolatedNameVector[ColumnNumber]), get(InterpolatedNameVector[ColumnNumber+1]), get(InterpolatedNameVector[ColumnNumber+2]), get(InterpolatedNameVector[ColumnNumber+3])))
    assign(InterpolatedVelocityDataName, data.frame(get(InterpolatedVelocityNameVector[ColumnNumber]), get(InterpolatedVelocityNameVector[ColumnNumber+1]), get(InterpolatedVelocityNameVector[ColumnNumber+2]), get(InterpolatedVelocityNameVector[ColumnNumber+3])))
    assign(InterpolatedAccelerationDataName, data.frame(get(InterpolatedAccelerationNameVector[ColumnNumber]), get(InterpolatedAccelerationNameVector[ColumnNumber+1]), get(InterpolatedAccelerationNameVector[ColumnNumber+2]), get(InterpolatedAccelerationNameVector[ColumnNumber+3])))

    ColumnNumber <- ColumnNumber + 4
    
    TempData <- get(InterpolatedDataName)#Saves current data frame to a temp variable.
    colnames(TempData) <- c("Heading", "Roll", "Pitch", "Task.Time")#Assigns new column names to each column.
    assign(InterpolatedDataName, TempData)#Assigns the columns with the news names to the data frame.
    
    TempData <- get(InterpolatedVelocityDataName)
    colnames(TempData) <- c("Heading", "Roll", "Pitch", "Task.Time")
    assign(InterpolatedVelocityDataName, TempData)
    
    TempData <- get(InterpolatedAccelerationDataName)
    colnames(TempData) <- c("Heading", "Roll", "Pitch", "Task.Time")
    assign(InterpolatedAccelerationDataName, TempData)
  }
  
  rm(DataToUse, ColumnNumber, CurrentData, Gap, i, j, k, l, LoopAmount, DataName, 
     InterpolatedDataName, NameVector, InterpolatedNameVector, CurrentInterpolated, 
     CurrentInterpolatedVelocity, CurrentInterpolatedAcceleration,FilteredData, ParticipantCount, TempData, InterpolatedAccelerationDataName, InterpolatedVelocityDataName, 
     InterpolatedAccelerationNameVector, InterpolatedVelocityNameVector)
}

#Create a data frame for each scenario and each task in that scenario.
# RMS_NVRTask1 <- data.frame()
# RMS_NVRTask2 <- data.frame()
# RMS_NVRTask3 <- data.frame()
# 
# RMS_VRTask1 <- data.frame()
# RMS_VRTask2 <- data.frame()
# RMS_VRTask3 <- data.frame()
# 
# RMS_NVRWTask1 <- data.frame()
# RMS_NVRWTask2 <- data.frame()
# RMS_NVRWTask3 <- data.frame()
# 
# 
# for(i in 1:21)
# {
#     H <- get(paste("U_InterpolatedParticipant", i, "_", "NVRTask1", sep=""))[, c(1)]
#     R <- get(paste("U_InterpolatedParticipant", i, "_", "NVRTask1", sep=""))[, c(2)]
#     P<- get(paste("U_InterpolatedParticipant", i, "_", "NVRTask1", sep=""))[, c(3)]
#     TT<-get(paste("U_InterpolatedParticipant", i, "_", "NVRTask1", sep=""))[, c(4)]
#     
#     RMSH <- sqrt(sum(H^2)/length(H))
#     RMSR <- sqrt(sum(R^2)/length(R))
#     RMSP <- sqrt(sum(P^2)/length(P))
#     RMSTT <- sqrt(sum(TT^2)/length(TT))
#     
#     new_row <- c(RMSH, RMSR, RMSP, RMSTT)
#     RMS_NVRTask1 <- rbind(RMS_NVRTask1, new_row)
# }
# colnames(RMS_NVRTask1) <- c("Heading", "Roll", "Pitch", "Task.Time")
print("Completed")
