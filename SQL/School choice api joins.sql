--Load data from Old Summer_Camp_Choice where Status is 'A'. 'X' status means the selection is 'deleted'.
--The reg.ID IS NULL allows for rerunning without duplicating records.

DELETE FROM [Res_DB].[dbo].Summer_Camp_Registration WHERE 1=1
DELETE FROM [Res_DB].[dbo].Summer_Camp_Status_History WHERE 1=1

INSERT INTO [Res_DB].[dbo].Summer_Camp_Registration 
	(FK_Summer_Camp_Choice, CalendarYR, FK_PCS_StudentLookup__Student_ID, Summer_Camp_Title, WeekNbr, SchoolName, School_ID, FK_Status, UpdateDate, UpdateUser)
SELECT 
	choice.id as FK_Summer_Camp_Choice, 
	choice.CalendarYR,
	choice.Student_ID as FK_PCS_StudentLookup__Student_ID, 
	choice.Summer_Camp_Title,
	choice.WeekNbr,
	choice.SchoolName,
	choice.School_ID,
	choice.Status as FK_Status, 
	choice.UpdateDate,
	choice.UpdateUser
FROM [Res_DB_Prod].[dbo].Summer_Camp_Choice as choice
WHERE choice.CalendarYR = '2025/2026' 
	AND choice.Status = 'A'

INSERT INTO [Res_DB].[dbo].Summer_Camp_Status_History (FK_Summer_Camp_Registration, FK_NewStatus, Updated_Date, Updated_User)
SELECT 
	reg.ID as FK_Summer_Camp_Registration, 
	reg.FK_Status as FK_NewStatus, 
	GETDATE() as Updated_Date, 
	'whitingtonr' as Updated_User 
FROM [Res_DB].[dbo].Summer_Camp_Registration as reg