select 
	r.FK_PCS_StudentLookup__Student_ID, 
	s.FirstName,
	s.LastName,
	s.Grade,
	s.SchoolName
from Summer_Camp_Registration as r
JOIN [Res_DB].[dbo].[PCS_StudentLookup] as s
	on s.LocalStuID = r.FK_PCS_StudentLookup__Student_ID
where Grade = '06' or Grade = '07' or Grade = '08'
group by 	r.FK_PCS_StudentLookup__Student_ID, 
	s.FirstName,
	s.LastName,
	s.Grade,
	s.SchoolName
order by SchoolName, Grade, LastName, FirstName
