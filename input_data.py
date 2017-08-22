#! /usr/bin/env python
# -*- coding: utf-8 -*-

players_dictionary = ['Леонтьев Алексей','Худяков Сергей','Гришин Виктор','Алешин Сергей',
'Бобров Валентин','Павлов Георгий','Фудзи Кейске','Смоленцев Виктор','Ткаченко Никита',
'Троценко Филипп','Мартынов Иван','Плясунов Владислав','Хаипов Эдуард','Коновалов Михаил','Белоусова Марина',
'Моримото Юки','Ильина Дарья','Патрикеев Павел','Божедонов Александр','Усманов Рамиль',
'Черных Анастасия','Васильев Сергей','Жевленев Егор','Сироткин Дмитрий','Богатиков Александр',
'Козлов Виктор','Чиба Дайна','Кларк Дэвид','Манджиев Арслан','Гоголев Максим','Гуркина Наталья',
'Мамин Владислав','Наданьян Владимир','Петрущенко Сергей','Ким Евгений','Кваша Илья','Ли Венлон',
'Кретов Никита','Афонин Михаил','Проскурякова Ольга','Чечин Вадим']

players = ['Плясунов Владислав','Чечин Вадим','Гришин Виктор','Павлов Георгий'];
points = [17300,42300,8400,32000]
place = [3,1,4,2]
date = '2017-08-05'
bet = '3'
uma = 'std'

hanchan = [
("--{0}").format(date),
("insert into game select max(id)+1,'{0}',{1},'{2}' from game;").format(date,bet,uma),
("insert into score select (count(*)/4+1),{2},'{0}','{1}' from score;".format(players[0],points[0],place[0])),
("insert into score select (count(*)/4+1),{2},'{0}','{1}' from score;".format(players[1],points[1],place[1])),
("insert into score select (count(*)/4+1),{2},'{0}','{1}' from score;".format(players[2],points[2],place[2])),
("insert into score select (count(*)/4+1),{2},'{0}','{1}' from score;".format(players[3],points[3],place[3]))
]

f = open('august.txt', 'a');

for element in players:
	if element not in players_dictionary:
		print ('Игрока {0} не существует!'.format(element))
		break
	elif sum(points)!=100000:
		print ('Сумма очков {0}'.format(sum(points)))
		break
else:
	for i in hanchan:
		f.write(i+'\n')


