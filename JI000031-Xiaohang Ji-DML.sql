SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE --Xiaohang Ji 12-11
TABLE_NAME = 'listener_t' OR 
TABLE_NAME = 'music_t' OR
TABLE_NAME = 'album_t' OR
TABLE_NAME = 'label_t' OR
TABLE_NAME = 'singer_t';

INSERT INTO singer_t VALUES (1, 'Jay', 'male');--Xiaohang Ji 12-11
INSERT INTO singer_t VALUES (2, 'IU', 'female');--Xiaohang Ji 12-11
INSERT INTO singer_t VALUES (3, 'Ji', 'male');--Xiaohang Ji 12-11
INSERT INTO singer_t VALUES (4, 'JB', 'male');--Xiaohang Ji 12-11
INSERT INTO singer_t VALUES (5, 'TF', 'female');--Xiaohang Ji 12-11

INSERT INTO label_t VALUES (1, 'epic');--Xiaohang Ji 12-11
INSERT INTO label_t VALUES (2, 'steam');--Xiaohang Ji 12-11
INSERT INTO label_t VALUES (3, 'tx');--Xiaohang Ji 12-11
INSERT INTO label_t VALUES (4, 'wangyi');--Xiaohang Ji 12-11
INSERT INTO label_t VALUES (5, 'cct');--Xiaohang Ji 12-11

INSERT INTO album_t VALUES (1, 'jin');--Xiaohang Ji 12-11
INSERT INTO album_t VALUES (2, 'mu');--Xiaohang Ji 12-11
INSERT INTO album_t VALUES (3, 'shui');--Xiaohang Ji 12-11
INSERT INTO album_t VALUES (4, 'huo');--Xiaohang Ji 12-11
INSERT INTO album_t VALUES (5, 'tu');--Xiaohang Ji 12-11

INSERT INTO music_t VALUES (1, 'a', 1, 1, 1 ); --Xiaohang Ji 12-11
INSERT INTO music_t VALUES (2, 'b' , 2, 2, 2 ); --Xiaohang Ji 12-11
INSERT INTO music_t VALUES (3, 'c', 3 , 3 , 3 ); --Xiaohang Ji 12-11
INSERT INTO music_t VALUES (4, 'c', 4, 4, 4); --Xiaohang Ji 12-11
INSERT INTO music_t VALUES (5, 'e', 5, 5, 5); --Xiaohang Ji 12-11
INSERT INTO music_t VALUES (6, 'f', 1, 2, 1 ); --Xiaohang Ji 12-11

INSERT INTO listener_t VALUES ('sin', 'ji000031@163.com', 1); --Xiaohang Ji 12-11
INSERT INTO listener_t VALUES ('cos', 'ji000071@163.com', 1); --Xiaohang Ji 12-11
INSERT INTO listener_t VALUES ('tan', 'xi000031@163.com', 2); --Xiaohang Ji 12-11
INSERT INTO listener_t VALUES ('queser', 'ji000035@163.com', 3); --Xiaohang Ji 12-11
INSERT INTO listener_t VALUES ('mi', 'mi123@163.com', 4); --Xiaohang Ji 12-11
INSERT INTO listener_t VALUES ('steaf', 'steaxys@13.com', 5); --Xiaohang Ji 12-11
INSERT INTO listener_t VALUES ('run', 'fdg1@13.com', 6); --Xiaohang Ji 12-11

SELECT * FROM listener_t WHERE music_id ='1';--Xiaohang Ji 12-11
SELECT * FROM music_t WHERE singer_id ='1';--Xiaohang Ji 12-11
SELECT * FROM singer_t WHERE singer_name ='IU';--Xiaohang Ji 12-11

SELECT music_t.music_name, singer_t.singer_name 
FROM music_t  LEFT JOIN singer_t ON music_t.singer_id = singer_t.singer_id
ORDER BY music_t.music_name;--Xiaohang Ji 12-11(the result is music_name and singer_name in the same table)

SELECT music_t.music_name, singer_t.singer_name 
FROM music_t  LEFT JOIN singer_t ON music_t.music_id = singer_t.music_id
ORDER BY music_t.music_name;--Xiaohang Ji 12-11(the result is music_name and singer_name in the same table)

SELECT music_t.music_name, listener_t.listener_name 
FROM music_t  RIGHT JOIN listener_t ON music_t.music_id = listener_t.music_id
ORDER BY music_t.music_name;--Xiaohang Ji 12-11(the result is music_name and listener_name in the same table)

SELECT label_id FROM music_t
UNION
SELECT label_id FROM label_t
ORDER BY label_id;--Xiaohang Ji 12-11

CREATE VIEW JAY AS
SELECT music_name, album_id
FROM music_t
WHERE singer_id = '1';--Xiaohang Ji 12-11

CREATE VIEW IU AS
SELECT music_name, album_id
FROM music_t
WHERE singer_id = '2';--Xiaohang Ji 12-11
