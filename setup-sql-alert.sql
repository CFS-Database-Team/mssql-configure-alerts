----------------------------------------------------------------------------------------------------------
-- Author      : Hidequel Puga
-- Date        : 2021-03-05
-- Description : Configure SQL Alerts
----------------------------------------------------------------------------------------------------------
USE [msdb]
GO

DECLARE @operator_name          AS NVARCHAR(128);
DECLARE @operator_email_address AS NVARCHAR(100);

    SET @operator_name          = N'codefivestar';      
    SET @operator_email_address = N'codefivestar@gmail.com'; 

-- Define SQL server operator
EXEC [dbo].[sp_add_operator] @name = @operator_name
                           , @enabled = 1
                           , @weekday_pager_start_time = 90000
                           , @weekday_pager_end_time = 180000
                           , @saturday_pager_start_time = 90000
                           , @saturday_pager_end_time = 180000
                           , @sunday_pager_start_time = 90000
                           , @sunday_pager_end_time = 180000
                           , @pager_days = 0
                           , @email_address = @operator_email_address
                           , @category_name = N'[Uncategorized]'                       
