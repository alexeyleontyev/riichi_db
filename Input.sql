--  ввод данных 
 INSERT into rating(game_num,bet,player,place,points,date) 
VALUES (451,5,'Троценко Филипп',1,38500,'07.08.2016');

INSERT into rating(game_num,bet,player,place,points,date) 
VALUES (451,5,'Павлов Георгий',4,-40900,'07.08.2016');

INSERT into rating(game_num,bet,player,place,points,date) 
VALUES (451,5,'Леонтьев Алексей',2,13800,'07.08.2016');

INSERT into rating(game_num,bet,player,place,points,date) 
VALUES (451,5,'Алешин Сергей',3,-11400,'07.08.2016');


-- новая структура

insert into game 
select max(id)+1,'2016-09-14',5,'std' from game;

insert into score 
select (count(*)/4+1),4,'Гришин Виктор','-2000' from score;

insert into score 
select (count(*)/4+1),2,'Павлов Георгий','34000' from score;

insert into score 
select (count(*)/4+1),3,'Смоленцев Виктор','25000' from score;

insert into score 
select (count(*)/4+1),1,'Алешин Сергей','43000' from score;
