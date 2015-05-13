

UPDATE SystemConfig SET Value='support@ratestudenthousing.com', UpdatedDate = GETUTCDATE() where [Key]='SMTP_FROM_EMAIL'
UPDATE SystemConfig SET Value='rsh12345', UpdatedDate = GETUTCDATE() where [Key]='SMTP_FROM_EMAIL_PASSWORD'
UPDATE SystemConfig SET Value='http://www.ratestudenthousing.com/', UpdatedDate = GETUTCDATE() where [Key]='SITEURL'

select * from SystemConfig