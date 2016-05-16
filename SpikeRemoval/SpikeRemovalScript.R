ParticipantNumber = 1#Number of particpants in the study.#21
DataSetsPerPartcipant = 4#Number of datasets in the .csv file for each participant.
SpikeLimit = 3#The max jump this function will allow before it removes/reduces it.

#TODO - Automate the loading in of new data files and save the results to a csv file in corresponding folders.
DataToUse <- read.csv("C:/Users/Jack/OneDrive/MSc/My Studies/Head Movement Study/Results Data/Time Normalised .csv files/NVR Task 1 Time Normalised.csv", header = TRUE)

NameVector <- NULL#This stores the names of each created dataset so we can put them in a data frame.
InterpolatedNameVector <- NULL#This stores the name of each created interpolated dataset.
InterpolatedVelocityNameVector <- NULL#
InterpolatedAccelerationNameVector <- NULL

SampleRate = 60#The default sample rate of the interpolations. 60 = 1 per second.

ParticipantCount = 1
for(j in 1:4)#ncol(DataToUse)
{
  if(j %% 5 == 0)
  {
    ParticipantCount <- ParticipantCount + 1
  }
  CurrentData <- na.omit(DataToUse[j])#This specifies the column that will be selected#DataToUse
  LoopAmount <- nrow(CurrentData)
  LoopAmount <- LoopAmount - 1;

  #plot.ts(CurrentData[1])#Prints "Before" plots.

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
  
  #FilteredData <- ts(na.omit(CurrentData[1]), frequency = 60, start = 0)# 60 for seconds, 60/1000 for milliseconds, (60/1000) / 20 for 20 (0.02) milliseconds, start = 0 fixes the start position to 0 not 0.02
  FilteredData <- ts(na.omit(unique(CurrentData[1])), start = 0)#Created from the unique recordings in the data set. Starts from 0 not 0.02.
  #plot.ts(FilteredData)#Timeseries plot
  #plot.ts(diff(FilteredData))#Velocity Plot.
  #plot.ts(diff(diff(FilteredData)))#Acceleration plot.
  
  #Linear interpolation of unique data points.
  UniqueInterpolation <-approx(x = seq(0,60, length.out = length(FilteredData)), y = FilteredData, method="linear", n = SampleRate)# n = ?? is the amount of data interpolations to be used. n is the sample rate.
  #UniqueInterpolation <-ts(UniqueInterpolation, start = 0)#Coverts to time series just incase.
  #plot.ts(UniqueInterpolation$y)#plots ts data (Y axis) just incase.
  plot(UniqueInterpolation, main = paste("Linear Interpolation of unique data points ","(",colnames(CurrentData[1]),")", sep = ""), sub = paste("Participant ", ParticipantCount), xlab = "Time (Interpolated to 60 seconds)", ylab = "Degrees")
  lines(UniqueInterpolation)
  
  #Linear Interpolation of velocity.
  FilteredData <- diff(FilteredData)
  VelocityInterpolation <-approx(x = seq(0,60, length.out = length(FilteredData)), y = FilteredData, method="linear", n = SampleRate)
  plot(VelocityInterpolation, main = paste("Linear Interpolation of velocity ","(",colnames(CurrentData[1]),")", sep = ""),  sub = paste("Participant ", ParticipantCount), xlab = "Time (Interpolated to 60 seconds)", ylab = "Degrees")
  lines(VelocityInterpolation)
  
  #Linear Interpolation of Acceleration
  FilteredData <- diff(FilteredData)#as we set TestTS to diff(TestTS) in the last call, we only need to call diff on this one which then makes diff(diff(TestTS))
  AccelerationInterpolation <-approx(x = seq(0,60, length.out = length(FilteredData)), y = FilteredData, method="linear", n = SampleRate)
  plot(AccelerationInterpolation, main = paste("Linear Interpolation of acceleration ","(",colnames(CurrentData[1]),")", sep = ""),  sub = paste("Participant ", ParticipantCount), xlab = "Time (Interpolated to 60 seconds)", ylab = "Degrees")
  lines(AccelerationInterpolation)
  
  #Creates the data frame for each participants interpolated data after the script has been completed.
  CurrentInterpolated <- data.frame(matrix(unlist(UniqueInterpolation$y), nrow = length(UniqueInterpolation$y), byrow = T), stringsAsFactors = FALSE)
  InterpolatedDataName <-paste("InterpolatedData", j, sep = "")
  assign(InterpolatedDataName, na.omit(CurrentInterpolated))
  InterpolatedNameVector <- c(InterpolatedNameVector, InterpolatedDataName)
  
  #Creates a data frame for the velocity of each participant so we can use the data later.
  CurrentInterpolatedVelocity <- data.frame(matrix(unlist(VelocityInterpolation$y), nrow = length(VelocityInterpolation$y), byrow = T), stringsAsFactors = FALSE)
  InterpolatedVelocityDataName <-paste("InterpolatedDataVelocity", j, sep = "")
  assign(InterpolatedVelocityDataName, na.omit(CurrentInterpolatedVelocity))
  InterpolatedVelocityNameVector <- c(InterpolatedVelocityNameVector, InterpolatedVelocityDataName)
  
  #creates a data frame for the acceleration pf each participant so we can use the data later.
  CurrentInterpolatedAcceleration <- data.frame(matrix(unlist(AccelerationInterpolation$y), nrow = length(AccelerationInterpolation$y), byrow = T), stringsAsFactors = FALSE)
  InterpolatedAccelerationDataName <-paste("InterpolatedDataAcceleration", j, sep = "")
  assign(InterpolatedAccelerationDataName, na.omit(CurrentInterpolatedAcceleration))
  InterpolatedAccelerationNameVector <- c(InterpolatedAccelerationNameVector, InterpolatedAccelerationDataName)
  
  #Clears variables just to be sure.
  Gap <-NULL
  CurrentData<-NULL
}

ColumnNumber  = 1
for(i in 1:ParticipantNumber)
{
  DataName <- paste("Participant", i, sep="")
  InterpolatedDataName <- paste("U_InterpolatedParticipant", i, sep = "")#U = Unique
  InterpolatedVelocityDataName <- paste("V_InterpolatedParticipant", i, sep = "")#V = Velocity
  InterpolatedAccelerationDataName <- paste("A_InterpolatedParticipant", i, sep = "")#A = Acceleration
  for(j in 1:DataSetsPerPartcipant)
  {
      assign(DataName, data.frame(get(NameVector[ColumnNumber]), get(NameVector[ColumnNumber+1]), get(NameVector[ColumnNumber+2]), get(NameVector[ColumnNumber+3])))
      assign(InterpolatedDataName, data.frame(get(InterpolatedNameVector[ColumnNumber]), get(InterpolatedNameVector[ColumnNumber+1]), get(InterpolatedNameVector[ColumnNumber+2]), get(InterpolatedNameVector[ColumnNumber+3])))
      assign(InterpolatedVelocityDataName, data.frame(get(InterpolatedVelocityNameVector[ColumnNumber]), get(InterpolatedVelocityNameVector[ColumnNumber+1]), get(InterpolatedVelocityNameVector[ColumnNumber+2]), get(InterpolatedVelocityNameVector[ColumnNumber+3])))
      assign(InterpolatedAccelerationDataName, data.frame(get(InterpolatedAccelerationNameVector[ColumnNumber]), get(InterpolatedAccelerationNameVector[ColumnNumber+1]), get(InterpolatedAccelerationNameVector[ColumnNumber+2]), get(InterpolatedAccelerationNameVector[ColumnNumber+3])))
  }
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

#Test write to csv, wont be included in final build.
#MyPath <- file.path("C:/Users/Jack/Desktop/", paste("U_InterpolatedParticipant.csv", sep = ""))
#write.csv(TempData, MyPath, row.names = FALSE)

#MyPath <- file.path("C:/Users/Jack/Desktop/", paste("V_InterpolatedParticipant.csv", sep = ""))
#write.csv(TempData, MyPath, row.names = FALSE)

#MyPath <- file.path("C:/Users/Jack/Desktop/", paste("A_InterpolatedParticipant.csv", sep = ""))
#write.csv(TempData, MyPath, row.names = FALSE)

#Variable Cleanup
for(i in 1:4)#ncol(DataToUse)
{
  rm(list = NameVector[i])
  rm(list = InterpolatedNameVector[i])
  rm(list = InterpolatedVelocityNameVector[i])
  rm(list = InterpolatedAccelerationNameVector[i])
}
rm(DataToUse, ColumnNumber, CurrentData, DataSetsPerPartcipant, Gap, i, j, k, l, LoopAmount, DataName, 
   InterpolatedDataName, ParticipantNumber, SpikeLimit, NameVector, InterpolatedNameVector, CurrentInterpolated, 
   CurrentInterpolatedVelocity, CurrentInterpolatedAcceleration, UniqueInterpolation, AccelerationInterpolation, 
   VelocityInterpolation ,FilteredData, ParticipantCount, TempData, InterpolatedAccelerationDataName, InterpolatedVelocityDataName, 
   InterpolatedAccelerationNameVector, InterpolatedVelocityNameVector)#, MyPath