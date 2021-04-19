CREATE TABLE IF NOT EXISTS `track_202130_users` (
`id` INT NULL,
`name` VARCHAR(MAX) NULL,
`username` VARCHAR(MAX) NULL,
`email` VARCHAR(MAX) NULL,
`password` VARCHAR(MAX) NULL,
`img` VARCHAR(MAX) NULL,
`date_create` VARCHAR(MAX) NULL
);

INSERT INTO track_202130_users VALUES
(1,'Adele Figueroa','user1','user1@gmail.com',md5("pass"),'https://via.placeholder.com/400/811/fff/?text=user1','2020-12-11 02:54:38'),
(2,'Bethany Silva','user2','user2@gmail.com',md5("pass"),'https://via.placeholder.com/400/715/fff/?text=user2','2020-04-02 07:49:29'),
(3,'Courtney Prince','user3','user3@gmail.com',md5("pass"),'https://via.placeholder.com/400/952/fff/?text=user3','2021-02-04 12:20:05'),
(4,'Alberta Jensen','user4','user4@gmail.com',md5("pass"),'https://via.placeholder.com/400/870/fff/?text=user4','2020-01-09 11:52:28'),
(5,'Eula Bradshaw','user5','user5@gmail.com',md5("pass"),'https://via.placeholder.com/400/743/fff/?text=user5','2020-05-24 10:57:26'),
(6,'Buck Landry','user6','user6@gmail.com',md5("pass"),'https://via.placeholder.com/400/964/fff/?text=user6','2020-06-18 08:52:17'),
(7,'Lacey Callahan','user7','user7@gmail.com',md5("pass"),'https://via.placeholder.com/400/734/fff/?text=user7','2020-11-30 11:54:09'),
(8,'Phoebe Solis','user8','user8@gmail.com',md5("pass"),'https://via.placeholder.com/400/910/fff/?text=user8','2020-07-27 08:01:16'),
(9,'Nellie Montgomery','user9','user9@gmail.com',md5("pass"),'https://via.placeholder.com/400/925/fff/?text=user9','2020-02-22 09:33:36'),
(10,'Hayden Saunders','user10','user10@gmail.com',md5("pass"),'https://via.placeholder.com/400/853/fff/?text=user10','2020-11-15 06:02:58');