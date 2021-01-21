USE Crowfunding
GO;

INSERT INTO [Address]([Number],[Street],[City],[Country],[Department])
    VALUES  ('15','Avenue des cerisiers','Brussels','BELGIUM',null),
            ('12','Avenue des McArthur','Waterloo','BELGIUM',null),
            ('2B','Boulvard Audan','Charleroi','BELGIUM',null)

INSERT INTO User([Email],[Firstname],[Lastname],[Login],[Password],[Salt],[Phone],[Birthdate],[IDAddress])
    VALUES  ('samuel.legrain@bstorm.be','Samuel','Legrain','slegrain',HASHBYTES('SHA2_256','test12345678'),'12345678','+32490123456','1987-09-27',1),
            ('michael.person@bstorm.be','Michael','Person','mperson',HASHBYTES('SHA2_256','test12345678'),'12345678','+32490123456','1983-01-01',2)

INSERT INTO Project_Creator
    VALUES  (2, 'BE0123456789', 'BrainStorm Consulting', 3)

INSERT INTO [Admin]
    VALUES  (1, GETDATE())

INSERT INTO Project([Name],[Description],[URLVideo],[FundingCap],[AccountNumber],[StartDate],[EndDate],[IDCreator],[IDValidator],[ValidationDate])
    VALUES ('MaSuperDB','Serie vidéo de tutoriaux concernant SQL Server', 'https://youtu.be/knGhzlGsGtk', '24999.99', 'BE12-1234-1234-1234','2021-01-30','2021-02-20',2,1,'2021-01-01')

INSERT INTO [StepReward]([Name],[Amount],[Reward],[CreationDate],[IDProject])
    VALUES  ('Participant',0,'Porte clé à l''éffigie du créateur','2020-12-24',1),
            ('Petite bourse',0,'Bourse en tissu','2020-12-24',1),
            ('Bill Gates?',1000,'Mug avec Logo','2020-12-24',1)

INSERT INTO [Reject](IDUser,IDProject,[Date],Comment)
    VALUES  (1,1,'2020-12-25','Pas assez explicite.'),
            (1,1,'2020-12-31','La vidéo est bien, mais le budget semble trop élevé.')

INSERT INTO [Sponsor](IDUser,IDProject,[Amount],[Date])
    VALUES  (1,1,200,'2021-02-01'),
            (1,1,799.99,'2021-02-14')