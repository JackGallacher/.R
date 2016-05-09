ParticipantNumber = 1#Number of particpants in the study.
DataSetsPerPartcipant = 4#Number of datasets in the .csv file for each participant.
ColumnToPlot <- 1#Specify the first column of the dataset we will look at first (The first one, duh..)

SpikeLimit = 3#The max jump this function will allow before it removes/reduces it.

DataToUse <- read.csv("C:/Users/Jack/OneDrive/MSc/My Studies/Head Movement Study/Results Data/Time Normalised .csv files/NVR Task 1 Time Normalised.csv", header = TRUE)
DataToUse <- DataToUse[, c(1,2,3,4)]#Selects first four columns for testing.


#dir.create("C:/Users/Jack/Desktop/DespikedCSV")#Creates directory that we can save the "Despiked" .csv files to.

for(i in 1:ParticipantNumber)
{
  for(j in 1:DataSetsPerPartcipant)
  {
    CurrentData <- na.omit(DataToUse[j])
    LoopAmount <- nrow(CurrentData)
    LoopAmount <- LoopAmount - 1;
    
    plot.ts(CurrentData)#Prints "Before" plots.
    for(k in 1:LoopAmount)
    {
      #Finds the data up spikes.
      if((CurrentData[k + 1, c(ColumnToPlot)] - CurrentData[k, c(ColumnToPlot)]) > SpikeLimit)#, c(ColumnToPlot)
      {
        Gap <- CurrentData[k + 1, c(ColumnToPlot)] - CurrentData[k, c(ColumnToPlot)]
        cat("Positive outlier found between cells", k, "and", k+1, "jumps from", CurrentData[k, c(ColumnToPlot)], "to", CurrentData[k + 1, c(ColumnToPlot)], "with a gap of", CurrentData[k + 1, c(ColumnToPlot)] - CurrentData[k, c(ColumnToPlot)], "\n") 
        
        for(l in k+1:LoopAmount)
        {
          CurrentData [l, c(ColumnToPlot)] <- CurrentData[l, c(ColumnToPlot)] - Gap
        }
      }
      
      #Finds the data down spikes.
      if((CurrentData[k, c(ColumnToPlot)] - CurrentData[k + 1, c(ColumnToPlot)]) > SpikeLimit)
      {
        Gap <- CurrentData[k, c(ColumnToPlot)] - CurrentData[k + 1, c(ColumnToPlot)]
        cat("Negative outlier found between cells", k, "and", k+1, "drops from", CurrentData[k, c(ColumnToPlot)], "to", CurrentData[k + 1, c(ColumnToPlot)], "with a gap of", CurrentData[k, c(ColumnToPlot)] - CurrentData[k + 1, c(ColumnToPlot)], "\n")
        
        for(l in k+1:LoopAmount)
        {
          CurrentData [l, c(ColumnToPlot)] <- CurrentData[l, c(ColumnToPlot)] + Gap
        }
      }
      
      #ColumnToPlot <- ColumnToPlot + 1
    }
    
    
    
    
    
    
    
    
    
    
    #Write .csv to file/folder (TEMP SOLUTION)
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
    
    plot.ts(CurrentData[ColumnToPlot])#Prints "After" plots.
    
    #Clears variables just to be sure.
    Gap <-NULL
    CurrentData<-NULL
  }
}