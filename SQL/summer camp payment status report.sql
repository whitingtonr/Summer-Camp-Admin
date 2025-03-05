-- Total Camps Registered
SELECT * FROM [Res_DB_Prod].[dbo].[Summer_Camp_Choice] WHERE CalendarYR = '2025/2026' AND Status = 'A' order by UpdateDate desc

-- Total Students Registered
SELECT distinct Student_ID FROM [Res_DB_Prod].[dbo].[Summer_Camp_Choice] WHERE CalendarYR = '2025/2026' AND Status = 'A' 

SELECT count(Student_ID) FROM [Res_DB_Prod].[dbo].[Summer_Camp_Choice] WHERE CalendarYR = '2025/2026' AND Status = 'A' 
group by Student_ID
order by count(Student_ID) desc

-- Students registered per day
SELECT datepart(month, UpdateDate) as Month, datepart(day, UpdateDate) as Day, count(Student_ID) FROM [Res_DB_Prod].[dbo].[Summer_Camp_Choice] 
WHERE CalendarYR = '2025/2026' AND Status = 'A' 
group by datepart(month, UpdateDate), datepart(day, UpdateDate)
order by datepart(month, UpdateDate), datepart(day, UpdateDate)