-- display the current date and time in the following format "day.month.year hour:minutes:seconds:milliseconds". 
USE TelerikAcademy
SELECT CONVERT(NVARCHAR(20), GETDATE(), 104) + ' ' + CONVERT(nvarchar(20), GETDATE(), 114);