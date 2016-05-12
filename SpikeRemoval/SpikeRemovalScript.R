ParticipantNumber = 21#Number of particpants in the study.
DataSetsPerPartcipant = 4#Number of datasets in the .csv file for each participant.
SpikeLimit = 3#The max jump this function will allow before it removes/reduces it.

#TODO - Automate the loading in of new data files and save the results to a csv file in corresponding folders.
DataToUse <- read.csv("C:/Users/Jack/OneDrive/MSc/My Studies/Head Movement Study/Results Data/Time Normalised .csv files/NVR Task 1 Time Normalised.csv", header = TRUE)
#dir.create("C:/Users/Jack/Desktop/DespikedCSV")#Creates directory that we can save the "Despiked" .csv files to.

NameVector <- NULL#This stores the names of each created dataset so we can put them in a data frame.


ParticipantCount = 1
for(j in 1:ncol(DataToUse))#4
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

  #TestTS <- ts(na.omit(CurrentData[1]), frequency = 60, start = 0)# 60 for seconds, 60/1000 for milliseconds, (60/1000) / 20 for 20 (0.02) milliseconds, start = 0 fixes the start position to 0 not 0.02
  TestTS <- ts(na.omit(unique(CurrentData[1])), start = 0)#Plots on the unique recordings in the data set. Starts from 0 not 0.02.
  #plot.ts(TestTS)#Timeseries plot
  #plot.ts(diff(TestTS))#Velocity Plot.
  #plot.ts(diff(diff(TestTS)))#Acceleration plot.
  
  #Linear interpolation of unique data points.
  Interpolation <-approx(x = seq(0,60, length.out = length(TestTS)), y = TestTS, method="linear")# n = ?? is the amount of data interpolations to be used. This interpolation stretches the data out over 60 seconds.
  plot(Interpolation, main = paste("Linear Interpolation of unique data points","(",colnames(CurrentData[1]),")"), sub = paste("Participant ", ParticipantCount), xlab = "Time (Interpolated to 60 seconds)", ylab = "Degrees")
  lines(Interpolation)
  
  #Linear Interpolation of velocity.
  TestTS <- diff(TestTS)
  Interpolation <-approx(x = seq(0,60, length.out = length(TestTS)), y = TestTS, method="linear")
  plot(Interpolation, main = paste("Linear Interpolation of velocity","(",colnames(CurrentData[1]),")"),  sub = paste("Participant ", ParticipantCount), xlab = "Time (Interpolated to 60 seconds)", ylab = "Degrees")
  lines(Interpolation)
  
  #Linear Interpolation of Acceleration
  TestTS <- diff(TestTS)#as we set TestTS to diff(TestTS) in the last call, we only need to call diff on this one which then makes diff(diff(TestTS))
  Interpolation <-approx(x = seq(0,60, length.out = length(TestTS)), y = TestTS, method="linear")
  plot(Interpolation, main = paste("Linear Interpolation of acceleration","(",colnames(CurrentData[1]),")"),  sub = paste("Participant ", ParticipantCount), xlab = "Time (Interpolated to 60 seconds)", ylab = "Degrees")
  lines(Interpolation)
  
  #Interplation$y to get the y values of the interplation Interpolation$x to get the x values.
  
  #Clears variables just to be sure.
  Gap <-NULL
  CurrentData<-NULL
}

ColumnNumber  = 1
for(i in 1:ParticipantNumber)
{
  DataName <- paste("Participant", i, sep="")
  for(j in 1:DataSetsPerPartcipant)
  {
      assign(DataName, data.frame(get(NameVector[ColumnNumber]), get(NameVector[ColumnNumber+1]), get(NameVector[ColumnNumber+2]), get(NameVector[ColumnNumber+3])))
  }
  ColumnNumber <- ColumnNumber + 4
}


#Variable Cleanup
for(i in 1:ncol(DataToUse))#4
{
  rm(list = NameVector[i])
}
rm(DataToUse, ColumnNumber, CurrentData, DataSetsPerPartcipant, Gap, i, j, k, l, LoopAmount, DataName, ParticipantNumber, SpikeLimit, NameVector)


#Write .csv to file/folder (The next step, write each Participant "De-Spiked" dataset into corresponding .csv files/folders including plots.)
#if(j == 1)
#{
#RecordedData = "Heading"
#}
#if(j == 2)
#{
#RecordedData = "Roll"
#}
#if(j ==3)
#{
#RecordedData = "Pitch"
#}
#if(j == 4)
#{
#RecordedData = "Time"
#}
#MyPath <- file.path("C:/Users/Jack/Desktop/DespikedCSV", paste("Participant", i,"(",RecordedData,")",".csv", sep=""))
#write.csv(CurrentData, MyPath, row.names = FALSE)#writes to the csv files without naming the rows.
  
  

  
  
