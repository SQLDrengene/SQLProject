use Query1;

DROP TABLE IF EXISTS Journalist;
DROP TABLE IF EXISTS Adress;
DROP TABLE IF EXISTS Edition;
DROP TABLE IF EXISTS Footage;
DROP TABLE IF EXISTS Topic;
DROP TABLE IF EXISTS Team;
DROP TABLE IF EXISTS News;


CREATE TABLE Journalist
	(FirstName		VARCHAR(20),
	 LastName			VARCHAR(30),
	 PhoneNumber		INT(1),
     EmailAdresse 		VARCHAR(35),
	PRIMARY KEY(FirstName, LastName)
	);

CREATE TABLE Adress
	(StreetName		VARCHAR(25), 
	 CivicNumber		VARCHAR(5),
	 ZipCode		    VARCHAR(6),
	 PRIMARY KEY(StreetName)
	);

CREATE TABLE Edition
	(StartTime		time, 
    EndTime			time,
    EditionDate	  	date,
	HostName	VARCHAR(20), 
	 		  
	PRIMARY KEY(StartTime,EndTime,EditionDate)
	);
    
    CREATE TABLE Topic
	(BriefDesc		VARCHAR(25), 
	 FirstName		VARCHAR(20), 
	 TeamID		  			 INT NOT NULL,
     Title					VARCHAR(30),
	 PRIMARY KEY(Title),
     FOREIGN KEY(FirstName) REFERENCES Journalist(FirstName)
	);
    
      CREATE TABLE Footage
	(Title		VARCHAR(25), 
	 DateF		date, 
	 StartTime	time,
     EndTime time,
     Reporter	VARCHAR(25),
     FootageID INT(2),
	 PRIMARY KEY(FootageID)
	);
    
    CREATE TABLE Team
	(FirstName		VARCHAR(25),
	 Rolle		    ENUM('Leader','Advisor','Editor'),
     TeamID 		INT NOT NULL,
	 PRIMARY KEY(TeamID)
	);
    
     CREATE TABLE News
	(ID		INT NOT NULL,
     StartTime time,
     EndTime time,
     ViewsCount INT(25),
	 TopicTitle VARCHAR(25),
	 PRIMARY KEY(ID),
     FOREIGN KEY (TopicTitle) REFERENCES Topic(Title)
	);
    
    
   
    
    #INSERT Edition Values('12:00:12','14:00:12','12:06:12');
    
    
    
   # /// Bruges en tabel til at vise USES, det kommer senere med connections til Kanelen og diverse.alter CREATE TABLE Uses
	#);
    
    
    
    