# setting up a project 

createFolders <- function (prj) {
    prj <- as.character(prj)
    pathed <- paste0("./",prj)
    print(pathed)
    status <- path.expand(pathed) 
    if (dir.exists(status)==T) {      # check if the project folder has been initialized
      return(print("Project folder was already created"))
    }
    else{
      print("Creating the project folder")
      dir.create(path = status)
        
    if (status!=paste(pathed,"data",sep = "/")) {  # check if folders have been initialized, if not create all project folders
      loc <- paste(pathed,"data",sep = "/")
      dir.create(loc,showWarnings = T)
      print("successfully created folder data")
      
      loc <- paste(pathed,"diagnostics",sep = "/")
      dir.create(loc,showWarnings = T)
      print("successfully created folder dignostics")
      
      loc <- paste(pathed,"doc",sep = "/")
      dir.create(loc,showWarnings = T)
      print("successfully created folder doc")
      
      loc <- paste(pathed,"graphs",sep = "/")
      dir.create(loc,showWarnings = T)
      print("successfully created folder graphs")
      
      loc <- paste(pathed,"lib",sep = "/")
      dir.create(loc,showWarnings = T)
      print("successfully created folder lib")
      
      loc <- paste(pathed,"profiling",sep = "/")
      dir.create(loc,showWarnings = T)
      print("successfully created folder profiling")
      
      loc <- paste(pathed,"reports",sep = "/")
      dir.create(loc,showWarnings = T)
      print("successfully created folder reports")
      
      loc <- paste(pathed,"tests",sep = "/")
      dir.create(loc,showWarnings = T)
      print("successfully created folder tests")
      
      loc <- paste(pathed,"TODO.txt", sep = "/")
      file.create(loc)
      print("Created a TODO text file")
    }
        }
}

#createFolders("Project")

loadProject <- function (){source('lib/boot.R')}   # After checking it will load the libraries and datasets






