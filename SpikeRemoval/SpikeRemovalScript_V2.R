#Creates the folder we save all of out other results folders into.
dir.create("C:/Users/Jack/Desktop/Results")

#RMS data frame for time-series.
RMS_NVRTask1_TimeSeries <- data.frame()
RMS_NVRTask2_TimeSeries <- data.frame()
RMS_NVRTask3_TimeSeries <- data.frame()

RMS_VRTask1_TimeSeries <- data.frame()
RMS_VRTask2_TimeSeries <- data.frame()
RMS_VRTask3_TimeSeries <- data.frame()

RMS_NVRWTask1_TimeSeries <- data.frame()
RMS_NVRWTask2_TimeSeries <- data.frame()
RMS_NVRWTask3_TimeSeries <- data.frame()

#RMS data frames for velocity
RMS_NVRTask1_Velocity <- data.frame()
RMS_NVRTask2_Velocity <- data.frame()
RMS_NVRTask3_Velocity <- data.frame()

RMS_VRTask1_Velocity <- data.frame()
RMS_VRTask2_Velocity <- data.frame()
RMS_VRTask3_Velocity <- data.frame()

RMS_NVRWTask1_Velocity <- data.frame()
RMS_NVRWTask2_Velocity <- data.frame()
RMS_NVRWTask3_Velocity <- data.frame()

#RMS data frames for acceleration
RMS_NVRTask1_Acceleration <- data.frame()
RMS_NVRTask2_Acceleration <- data.frame()
RMS_NVRTask3_Acceleration <- data.frame()

RMS_VRTask1_Acceleration <- data.frame()
RMS_VRTask2_Acceleration <- data.frame()
RMS_VRTask3_Acceleration <- data.frame()

RMS_NVRWTask1_Acceleration <- data.frame()
RMS_NVRWTask2_Acceleration <- data.frame()
RMS_NVRWTask3_Acceleration <- data.frame()

for(i in 1:9)
{
  #Sets the paramter variables such as participant count, how many columns per participant and how big data spikes can be.
  ParticipantNumber = 21
  DataSetsPerPartcipant = 4
  SpikeLimit = 3
  
  #Creates the variables we will save out data to each loop in order to analyse.
  DataToUse <- NULL
  InterpolatedNameVector <- NULL
  InterpolatedVelocityNameVector <- NULL
  InterpolatedAccelerationNameVector <- NULL
  
  if(i == 1)
  {
    TaskName = "NVRTask1"
    
    DataToUse <- read.csv("C:/Users/Jack/OneDrive/MSc/My Studies/Head Movement Study/Results Data/Time Normalised .csv files/NVR Task 1 Time Normalised.csv", header = TRUE)
    dir.create("C:/Users/Jack/Desktop/Results/NVR Task 1")
    dir.create("C:/Users/Jack/Desktop/Results/NVR Task 1/Time Series (Interpolated)")
    dir.create("C:/Users/Jack/Desktop/Results/NVR Task 1/Velocity Plots")
    dir.create("C:/Users/Jack/Desktop/Results/NVR Task 1/Acceleration Plots")
    
    BaseFolder <- "C:/Users/Jack/Desktop/NVRW Task 1"
    TimeSeriesFolder <- "C:/Users/Jack/Desktop/Results/NVR Task 1/Time Series (Interpolated)"
    VelocityPlotFolder <- "C:/Users/Jack/Desktop/Results/NVR Task 1/Velocity Plots"
    AccelerationPlotFolder <- "C:/Users/Jack/Desktop/Results/NVR Task 1/Acceleration Plots"
    print("Created NVR Task 1")
  }
  if(i == 2)
  {
    TaskName = "NVRTask2"
    
    DataToUse <- read.csv("C:/Users/Jack/OneDrive/MSc/My Studies/Head Movement Study/Results Data/Time Normalised .csv files/NVR Task 2 Time Normalised.csv", header = TRUE)
    dir.create("C:/Users/Jack/Desktop/Results/NVR Task 2")
    dir.create("C:/Users/Jack/Desktop/Results/NVR Task 2/Time Series (Interpolated)")
    dir.create("C:/Users/Jack/Desktop/Results/NVR Task 2/Velocity Plots")
    dir.create("C:/Users/Jack/Desktop/Results/NVR Task 2/Acceleration Plots")
    
    BaseFolder <- "C:/Users/Jack/Desktop/NVRW Task 2"
    TimeSeriesFolder <- "C:/Users/Jack/Desktop/Results/NVR Task 2/Time Series (Interpolated)"
    VelocityPlotFolder <- "C:/Users/Jack/Desktop/Results/NVR Task 2/Velocity Plots"
    AccelerationPlotFolder <- "C:/Users/Jack/Desktop/Results/NVR Task 2/Acceleration Plots"
    print("Created NVR Task 2")
  }
  if(i == 3)
  {
    TaskName = "NVRTask3"
    
    DataToUse <- read.csv("C:/Users/Jack/OneDrive/MSc/My Studies/Head Movement Study/Results Data/Time Normalised .csv files/NVR Task 3 Time Normalised.csv", header = TRUE)
    dir.create("C:/Users/Jack/Desktop/Results/NVR Task 3")
    dir.create("C:/Users/Jack/Desktop/Results/NVR Task 3/Time Series (Interpolated)")
    dir.create("C:/Users/Jack/Desktop/Results/NVR Task 3/Velocity Plots")
    dir.create("C:/Users/Jack/Desktop/Results/NVR Task 3/Acceleration Plots")
    
    BaseFolder <- "C:/Users/Jack/Desktop/NVR Task 3"
    TimeSeriesFolder <- "C:/Users/Jack/Desktop/Results/NVR Task 3/Time Series (Interpolated)"
    VelocityPlotFolder <- "C:/Users/Jack/Desktop/Results/NVR Task 3/Velocity Plots"
    AccelerationPlotFolder <- "C:/Users/Jack/Desktop/Results/NVR Task 3/Acceleration Plots"
    print("Created NVR Task 3")
  }
  if(i == 4)
  {
    TaskName = "VRTask1"
    
    DataToUse <- read.csv("C:/Users/Jack/OneDrive/MSc/My Studies/Head Movement Study/Results Data/Time Normalised .csv files/VR Task 1 Time Normalised.csv", header = TRUE)
    dir.create("C:/Users/Jack/Desktop/Results/VR Task 1")
    dir.create("C:/Users/Jack/Desktop/Results/VR Task 1/Time Series (Interpolated)")
    dir.create("C:/Users/Jack/Desktop/Results/VR Task 1/Velocity Plots")
    dir.create("C:/Users/Jack/Desktop/Results/VR Task 1/Acceleration Plots")
    
    BaseFolder <- "C:/Users/Jack/Desktop/VR Task 1"
    TimeSeriesFolder <- "C:/Users/Jack/Desktop/Results/VR Task 1/Time Series (Interpolated)"
    VelocityPlotFolder <- "C:/Users/Jack/Desktop/Results/VR Task 1/Velocity Plots"
    AccelerationPlotFolder <- "C:/Users/Jack/Desktop/Results/VR Task 1/Acceleration Plots"
    print("Created VR Task 1")
  }
  if(i == 5)
  {
    TaskName = "VRTask2"
    
    DataToUse <- read.csv("C:/Users/Jack/OneDrive/MSc/My Studies/Head Movement Study/Results Data/Time Normalised .csv files/VR Task 2 Time Normalised.csv", header = TRUE)
    dir.create("C:/Users/Jack/Desktop/Results/VR Task 2")
    dir.create("C:/Users/Jack/Desktop/Results/VR Task 2/Time Series (Interpolated)")
    dir.create("C:/Users/Jack/Desktop/Results/VR Task 2/Velocity Plots")
    dir.create("C:/Users/Jack/Desktop/Results/VR Task 2/Acceleration Plots")
    
    BaseFolder <- "C:/Users/Jack/Desktop/Results/VR Task 2"
    TimeSeriesFolder <- "C:/Users/Jack/Desktop/Results/VR Task 2/Time Series (Interpolated)"
    VelocityPlotFolder <- "C:/Users/Jack/Desktop/Results/VR Task 2/Velocity Plots"
    AccelerationPlotFolder <- "C:/Users/Jack/Desktop/Results/VR Task 2/Acceleration Plots"
    print("Created VR Task 2")
  }
  if(i == 6)
  {
    TaskName = "VRTask3"
    
    DataToUse <- read.csv("C:/Users/Jack/OneDrive/MSc/My Studies/Head Movement Study/Results Data/Time Normalised .csv files/VR Task 3 Time Normalised.csv", header = TRUE)
    dir.create("C:/Users/Jack/Desktop/Results/VR Task 3")
    dir.create("C:/Users/Jack/Desktop/Results/VR Task 3/Time Series (Interpolated)")
    dir.create("C:/Users/Jack/Desktop/Results/VR Task 3/Velocity Plots")
    dir.create("C:/Users/Jack/Desktop/Results/VR Task 3/Acceleration Plots")
    
    BaseFolder <- "C:/Users/Jack/Desktop/Results/VR Task 3"
    TimeSeriesFolder <- "C:/Users/Jack/Desktop/Results/VR Task 3/Time Series (Interpolated)"
    VelocityPlotFolder <- "C:/Users/Jack/Desktop/Results/VR Task 3/Velocity Plots"
    AccelerationPlotFolder <- "C:/Users/Jack/Desktop/Results/VR Task 3/Acceleration Plots"
    print("Created VR Task 3")
    
  }
  if(i == 7)
  {
    TaskName = "NVRWTask1"
    
    DataToUse <- read.csv("C:/Users/Jack/OneDrive/MSc/My Studies/Head Movement Study/Results Data/Time Normalised .csv files/NVRW Task 1 Time Normalised.csv", header = TRUE)
    dir.create("C:/Users/Jack/Desktop/Results/NVRW Task 1")
    dir.create("C:/Users/Jack/Desktop/Results/NVRW Task 1/Time Series (Interpolated)")
    dir.create("C:/Users/Jack/Desktop/Results/NVRW Task 1/Velocity Plots")
    dir.create("C:/Users/Jack/Desktop/Results/NVRW Task 1/Acceleration Plots")
    
    BaseFolder <- "C:/Users/Jack/Desktop/Results/NVRW Task 1"
    TimeSeriesFolder <- "C:/Users/Jack/Desktop/Results/NVRW Task 1/Time Series (Interpolated)"
    VelocityPlotFolder <- "C:/Users/Jack/Desktop/Results/NVRW Task 1/Velocity Plots"
    AccelerationPlotFolder <- "C:/Users/Jack/Desktop/Results/NVRW Task 1/Acceleration Plots"
    print("Created NVRW Task 1")
  }
  if(i == 8)
  {
    TaskName = "NVRWTask2"
    
    DataToUse <- read.csv("C:/Users/Jack/OneDrive/MSc/My Studies/Head Movement Study/Results Data/Time Normalised .csv files/NVRW Task 2 Time Normalised.csv", header = TRUE)
    dir.create("C:/Users/Jack/Desktop/Results/NVRW Task 2")
    dir.create("C:/Users/Jack/Desktop/Results/NVRW Task 2/Time Series (Interpolated)")
    dir.create("C:/Users/Jack/Desktop/Results/NVRW Task 2/Velocity Plots")
    dir.create("C:/Users/Jack/Desktop/Results/NVRW Task 2/Acceleration Plots")
    
    BaseFolder <- "C:/Users/Jack/Desktop/Results/NVRW Task 2"
    TimeSeriesFolder <- "C:/Users/Jack/Desktop/Results/NVRW Task 2/Time Series (Interpolated)"
    VelocityPlotFolder <- "C:/Users/Jack/Desktop/Results/NVRW Task 2/Velocity Plots"
    AccelerationPlotFolder <- "C:/Users/Jack/Desktop/Results/NVRW Task 2/Acceleration Plots"
    print("Created NVRW Task 2")
    
  }
  if(i == 9)
  {
    TaskName = "NVRWTask3"
    
    DataToUse <- read.csv("C:/Users/Jack/OneDrive/MSc/My Studies/Head Movement Study/Results Data/Time Normalised .csv files/NVRW Task 3 Time Normalised.csv", header = TRUE)
    dir.create("C:/Users/Jack/Desktop/Results/NVRW Task 3")
    dir.create("C:/Users/Jack/Desktop/Results/NVRW Task 3/Time Series (Interpolated)")
    dir.create("C:/Users/Jack/Desktop/Results/NVRW Task 3/Velocity Plots")
    dir.create("C:/Users/Jack/Desktop/Results/NVRW Task 3/Acceleration Plots")
    
    BaseFolder <- "C:/Users/Jack/Desktop/NVRW Task 3"
    TimeSeriesFolder <- "C:/Users/Jack/Desktop/Results/NVRW Task 3/Time Series (Interpolated)"
    VelocityPlotFolder <- "C:/Users/Jack/Desktop/Results/NVRW Task 3/Velocity Plots"
    AccelerationPlotFolder <- "C:/Users/Jack/Desktop/Results/NVRW Task 3/Acceleration Plots"
    print("Created NVRW Task 3")
  }
  
  #Variables we use to plot/write to a file.
  ParticipantCount = 1
  FileNameCount = 1
  ParticipantIncrement = 0
  
  for(j in 1:ncol(DataToUse))#4
  {
    #We use this to name the participants when we write to a file.
    if(ParticipantIncrement == 4)#j %% 4 == 0
    {
      ParticipantCount <- ParticipantCount + 1
      ParticipantIncrement  = 0
    }
    
    #Sets the current data and the loop amount of the spike removal to how many columns are in the dataset.
    CurrentData <- na.omit(DataToUse[j])
    LoopAmount <- nrow(CurrentData)
    LoopAmount <- LoopAmount - 1;
    
    #Remember, all R variable are global. This means that even iterator variables within a loop have to be unique.
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
    
    #CurrentData represents the uninterpolted values. Plot this if you want to view the uninterpolated plots.
    
    #Removes all NA values from CurrentData.
    FilteredData <- na.omit(CurrentData[1])
    
    #Interpolation of repeated values.
    PreviousValue <- as.numeric(FilteredData[1, c(1)])+10000#Make look better.
    PreviousIndex <- 0
    
    #Loops through each row of the FilteredData.
    for(m in 1:nrow(FilteredData))
    {
      PresentValue = as.numeric(FilteredData[m, c(1)])
      if(PresentValue != PreviousValue )
      {
        GapSize <- m - PreviousIndex
        if(GapSize > 1) 
        {
          #We need to interpolate between previous value and present value in the gaps.
          Start <- PreviousIndex + 1
          End <- m - 1
          if (Start <= End)
          {
            #Interpolates the duplicate data.
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
        #Sets duplicates at the end of the column (No value after with a different value) to the previous column value.
        FilteredData[m, c(1)] = PreviousValue 
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
    
    #Writes the interpoled data to a file/folder.
    MyPath <- file.path(TimeSeriesFolder, paste("Participant", ParticipantCount, "(", RecordedData, ")",".png", sep = ""))
    png(file = MyPath)
    plot.ts(FilteredData, main = paste("Linear Interpolation of unique data points ","(",RecordedData,")", sep = ""), sub = paste("Participant ", ParticipantCount), xlab = "Time", ylab = "Degrees")
    dev.off()
    
    #Writes the velocity data to a file/folder.
    MyPath <- file.path(VelocityPlotFolder, paste("Participant", ParticipantCount, "(", RecordedData, ")",".png", sep = ""))
    png(file = MyPath)
    plot.ts(Velocity, main = paste("Linear Interpolation of velocity ","(",RecordedData,")", sep = ""),  sub = paste("Participant ", ParticipantCount), xlab = "Time", ylab = "Degrees")
    dev.off()
    
    #Writes the acceleration to a file/folder.
    MyPath <- file.path(AccelerationPlotFolder, paste("Participant", ParticipantCount, "(", RecordedData, ")",".png", sep = ""))
    png(file = MyPath)
    plot.ts(Acceleration, main = paste("Linear Interpolation of acceleration ","(",RecordedData,")", sep = ""),  sub = paste("Participant ", ParticipantCount), xlab = "Time", ylab = "Degrees")
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

    #Clears variables that are used for spike removal just to be sure.
    Gap <-NULL
    CurrentData<-NULL
    
    #Increments the FileNameCount (Used for choosing which column to plot) and the ParticipantIncrement (Used to name the files).
    FileNameCount <- FileNameCount + 1
    ParticipantIncrement <- ParticipantIncrement + 1
  }
  ColumnNumber  = 1
  for(o in 1:ParticipantNumber)
  {
    InterpolatedDataName <- paste("U_InterpolatedParticipant", o, "_", TaskName, sep = "")#U = Unique
    InterpolatedVelocityDataName <- paste("V_InterpolatedParticipant", o, "_", TaskName, sep = "")#V = Velocity
    InterpolatedAccelerationDataName <- paste("A_InterpolatedParticipant", o, "_", TaskName, sep = "")#A = Acceleration

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
  for(p in 1:ParticipantNumber)
  {
    H_TS <- get(paste("U_InterpolatedParticipant", p, "_", TaskName, sep=""))[, c(1)]
    R_TS <- get(paste("U_InterpolatedParticipant", p, "_", TaskName, sep=""))[, c(2)]
    P_TS <- get(paste("U_InterpolatedParticipant", p, "_", TaskName, sep=""))[, c(3)]
    TT_TS <- get(paste("U_InterpolatedParticipant", p, "_", TaskName, sep=""))[, c(4)]
    
    H_V <- get(paste("V_InterpolatedParticipant", p, "_", TaskName, sep=""))[, c(1)]
    R_V <- get(paste("V_InterpolatedParticipant", p, "_", TaskName, sep=""))[, c(2)]
    P_V <- get(paste("V_InterpolatedParticipant", p, "_", TaskName, sep=""))[, c(3)]
    TT_V <- get(paste("V_InterpolatedParticipant", p, "_", TaskName, sep=""))[, c(4)]
    
    H_A <- get(paste("A_InterpolatedParticipant", p, "_", TaskName, sep=""))[, c(1)]
    R_A <- get(paste("A_InterpolatedParticipant", p, "_", TaskName, sep=""))[, c(2)]
    P_A <- get(paste("A_InterpolatedParticipant", p, "_", TaskName, sep=""))[, c(3)]
    TT_A <- get(paste("A_InterpolatedParticipant", p, "_", TaskName, sep=""))[, c(4)]
    
    
    RMSH_TS <- sqrt(sum(H_TS^2)/length(H_TS))
    RMSR_TS <- sqrt(sum(R_TS^2)/length(R_TS))
    RMSP_TS <- sqrt(sum(P_TS^2)/length(P_TS))
    RMSTT_TS <- sqrt(sum(TT_TS^2)/length(TT_TS))
    
    RMSH_V <- sqrt(sum(H_V^2)/length(H_V))
    RMSR_V <- sqrt(sum(R_V^2)/length(R_V))
    RMSP_V <- sqrt(sum(P_V^2)/length(P_V))
    RMSTT_V <- sqrt(sum(TT_V^2)/length(TT_V))
    
    RMSH_A <- sqrt(sum(H_A^2)/length(H_A))
    RMSR_A <- sqrt(sum(R_A^2)/length(R_A))
    RMSP_A <- sqrt(sum(P_A^2)/length(P_A))
    RMSTT_A <- sqrt(sum(TT_A^2)/length(TT_A))
    
    TS_NewRow <- c(RMSH_TS, RMSR_TS, RMSP_TS, RMSTT_TS)
    assign(paste0("RMS_", TaskName, "_TimeSeries"), rbind(get(paste0("RMS_", TaskName, "_TimeSeries")), TS_NewRow ))
    
    V_NewRow <- c(RMSH_V, RMSR_V, RMSP_V, RMSTT_V)
    assign(paste0("RMS_", TaskName, "_Velocity"), rbind(get(paste0("RMS_", TaskName, "_Velocity")), V_NewRow  ))
    
    A_NewRow <- c(RMSH_A, RMSR_A, RMSP_A, RMSTT_A)
    assign(paste0("RMS_", TaskName, "_Acceleration"), rbind(get(paste0("RMS_", TaskName, "_Acceleration")), A_NewRow  ))
  }
}

#Assigns column names to NVR (Messy!)
colnames(RMS_NVRTask1_TimeSeries) <- c("Heading", "Roll", "Pitch", "Task.Time")
colnames(RMS_NVRTask2_TimeSeries) <- c("Heading", "Roll", "Pitch", "Task.Time")
colnames(RMS_NVRTask3_TimeSeries) <- c("Heading", "Roll", "Pitch", "Task.Time")

colnames(RMS_NVRTask1_Velocity) <- c("Heading", "Roll", "Pitch", "Task.Time")
colnames(RMS_NVRTask2_Velocity) <- c("Heading", "Roll", "Pitch", "Task.Time")
colnames(RMS_NVRTask3_Velocity) <- c("Heading", "Roll", "Pitch", "Task.Time")

colnames(RMS_NVRTask1_Acceleration) <- c("Heading", "Roll", "Pitch", "Task.Time")
colnames(RMS_NVRTask2_Acceleration) <- c("Heading", "Roll", "Pitch", "Task.Time")
colnames(RMS_NVRTask3_Acceleration) <- c("Heading", "Roll", "Pitch", "Task.Time")

#Assigns column names to VR (Messy!)
colnames(RMS_VRTask1_TimeSeries) <- c("Heading", "Roll", "Pitch", "Task.Time")
colnames(RMS_VRTask2_TimeSeries) <- c("Heading", "Roll", "Pitch", "Task.Time")
colnames(RMS_VRTask3_TimeSeries) <- c("Heading", "Roll", "Pitch", "Task.Time")

colnames(RMS_VRTask1_Velocity) <- c("Heading", "Roll", "Pitch", "Task.Time")
colnames(RMS_VRTask2_Velocity) <- c("Heading", "Roll", "Pitch", "Task.Time")
colnames(RMS_VRTask3_Velocity) <- c("Heading", "Roll", "Pitch", "Task.Time")

colnames(RMS_VRTask1_Acceleration) <- c("Heading", "Roll", "Pitch", "Task.Time")
colnames(RMS_VRTask2_Acceleration) <- c("Heading", "Roll", "Pitch", "Task.Time")
colnames(RMS_VRTask3_Acceleration) <- c("Heading", "Roll", "Pitch", "Task.Time")

#Assigns column names to NVRW (Messy!)
colnames(RMS_NVRWTask1_TimeSeries) <- c("Heading", "Roll", "Pitch", "Task.Time")
colnames(RMS_NVRWTask2_TimeSeries) <- c("Heading", "Roll", "Pitch", "Task.Time")
colnames(RMS_NVRWTask3_TimeSeries) <- c("Heading", "Roll", "Pitch", "Task.Time")

colnames(RMS_NVRWTask1_Velocity) <- c("Heading", "Roll", "Pitch", "Task.Time")
colnames(RMS_NVRWTask2_Velocity) <- c("Heading", "Roll", "Pitch", "Task.Time")
colnames(RMS_NVRWTask3_Velocity) <- c("Heading", "Roll", "Pitch", "Task.Time")

colnames(RMS_NVRWTask1_Acceleration) <- c("Heading", "Roll", "Pitch", "Task.Time")
colnames(RMS_NVRWTask2_Acceleration) <- c("Heading", "Roll", "Pitch", "Task.Time")
colnames(RMS_NVRWTask3_Acceleration) <- c("Heading", "Roll", "Pitch", "Task.Time")

rm(Acceleration, AccelerationPlotFolder, BaseFolder, ColumnNumber, CurrentData, DataSetsPerPartcipant, Diff, DifferencePerRow
   ,End, FileNameCount, Gap, GapSize, i, InterpolatedAccelerationDataName, InterpolatedAccelerationNameVector, InterpolatedDataName
   ,InterpolatedVelocityNameVector, InterpolatedNameVector, InterpolatedVelocityDataName, j, k, l, LoopAmount, m, MyPath, n, o,ParticipantCount
   ,ParticipantIncrement, ParticipantNumber, PresentValue, PreviousIndex, PreviousValue, RecordedData, SpikeLimit, Start, TaskName, TimeSeriesFolder
   ,Value, Velocity, VelocityPlotFolder, A_NewRow, H_A, H_TS, H_V, p, P_A, P_TS, P_V, R_A, R_TS, R_V, RMSH_A, RMSH_TS, RMSH_V, RMSP_A, RMSP_TS
   , RMSP_V, RMSR_A, RMSR_TS, RMSR_V, RMSTT_A, RMSTT_TS, RMSTT_V, TS_NewRow, TT_A, TT_TS, TT_V, V_NewRow)

print("Completed")
