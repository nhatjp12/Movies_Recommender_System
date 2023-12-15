use Tienxuly
 
SELECT * FROM [Tienxuly].[dbo].[test]

-- xóa cột column 1
ALTER TABLE [Tienxuly].[dbo].[test]
DROP COLUMN column1
-- check lại ( đã thành công ) 
SELECT * FROM [Tienxuly].[dbo].[test]

-- lấy tên phim ,mô tả phim,đạo diễn , diễn viên
ALTER TABLE [Tienxuly].[dbo].[test] DROP COLUMN Year_of_relase;
ALTER TABLE [Tienxuly].[dbo].[test] DROP COLUMN Watchtime;
ALTER TABLE [Tienxuly].[dbo].[test] DROP COLUMN Movie_Rating;
ALTER TABLE [Tienxuly].[dbo].[test] DROP COLUMN Metascore;
ALTER TABLE [Tienxuly].[dbo].[test] DROP COLUMN Votes;
ALTER TABLE [Tienxuly].[dbo].[test] DROP COLUMN Gross_collection;
-- check lại ( đã thành công ) 
SELECT * FROM [Tienxuly].[dbo].[test]
-- Làm việc với cột diễn viên 
update [Tienxuly].[dbo].[test]
SET Star = replace(replace(replace(Star, '[', ''), ']', ''), '''', '')
-- xóa khoảng trắng
update [Tienxuly].[dbo].[test]
set Star = replace(Star, ',', ' ')
-- check lại 
SELECT * FROM [Tienxuly].[dbo].[test]
--xóa kí tự Director trong cột Director:
update [Tienxuly].[dbo].[test]
set Director = replace(replace(Director, 'Directors:', ''), ',', '')
where Director LIKE 'Directors:%'
--
SELECT * FROM [Tienxuly].[dbo].[test]
