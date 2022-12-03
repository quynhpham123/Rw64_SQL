DROP DATABASE IF EXISTS TrainingManagement;
CREATE DATABASE TrainingManagement;
use TrainingManagement;
CREATE TABLE Trainee(
TraineeID int NOT NULL auto_increment,
PRIMARY KEY (TraineeID),
Full_Name varchar(100) NOT NULL,
Birth_Date DATE,
Gender Enum ('male', 'female', 'unknown'),
ET_IQ int,
	CHECK (ET_IQ > 0),
	CHECK (ET_IQ < 20),
ET_Gmath int,
	CHECK (ET_Gmath > 0),
	CHECK (ET_Gmath < 20),
ET_English int,
	CHECK (ET_English > 0),
	CHECK (ET_English < 50),
Training_Class varchar(255),
Evaluation_Notes varchar(255)
);
/*Question2:
*/
ALTER TABLE Trainee
ADD COLUMN VTI_Account char NOT NULL UNIQUE AFTER TraineeID;