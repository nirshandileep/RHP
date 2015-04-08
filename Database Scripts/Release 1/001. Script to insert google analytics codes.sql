/*Script to insert google analytics codes*/

DECLARE @script varchar(500)

set @script='<script> (function (i, s, o, g, r, a, m) {
        i[''GoogleAnalyticsObject''] = r; i[r] = i[r] || function () {
            (i[r].q = i[r].q || []).push(arguments)
        }, i[r].l = 1 * new Date(); a = s.createElement(o),
  m = s.getElementsByTagName(o)[0]; a.async = 1; a.src = g; m.parentNode.insertBefore(a, m)
    })(window, document, ''script'', ''//www.google-analytics.com/analytics.js'', ''ga'');

    ga(''create'', ''UA-57513985-1'', ''auto'');
    ga(''send'', ''pageview''); </script>'

IF NOT EXISTS(select NULL from dbo.SystemConfig WHERE [Key]='GOOGLE_ANALYTICS')
BEGIN
		PRINT 'ANALYTICS CODE INSERTED'
		INSERT INTO [dbo].[SystemConfig]
				   ([SystemConfigId]
				   ,[Key]
				   ,[Value]
				   ,[Description]
				   ,[CreatedBy]
				   ,[CreatedDate]
				   ,[UpdatedBy]
				   ,[UpdatedDate])
			 VALUES
				   (12
				   ,'GOOGLE_ANALYTICS'
				   ,@script
				   ,'Helps to change the google analytics code by environment'
				   ,'9DFA50B5-1A9D-4C15-A227-F70D96DBDCA5'
				   ,GETUTCDATE()
				   ,'9DFA50B5-1A9D-4C15-A227-F70D96DBDCA5'
				   ,GETUTCDATE())
           
END
ELSE
BEGIN
	PRINT 'ANALYTICS CODE EXISTS IN DATABASE'
	UPDATE dbo.SystemConfig SET Value=@script where [Key]='GOOGLE_ANALYTICS'
END

--SELECT * FROM dbo.SystemConfig