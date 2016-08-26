-- сравнительная стата игроков в играх друг с другом 
select 
	sum(r1.points), 
	avg(r1.place), 
	sum(r2.points), 
	avg(r2.place), 
	count(*) 
from 
	rating r1 
	join rating r2 on r1.game_num = r2.game_num 
where 
	r1.player = 'Гришин Виктор' 
	and r2.player = 'Троценко Филипп' 


--сессии по лимитами, датам и по игрокам 
select 
	player as игрок, 
	bet, 
	sum(points)*0.01*bet as выигрыш, 
	date as дата, 
	avg(place) as среднее_место, 
	count(*) as ханчаны 
from 
	rating 
where 
	player = 'Алешин Сергей' 
group by 
	date, 
	bet 
order by 
	game_num;

--статистика по дате, игрокам, результаты за день

select 
	player as игрок, 
	bet, 
	sum(points)* 0.01 * bet as выигрыш, 
	date as дата, 
	avg(place) as среднее_место, 
	count(*) as ханчаны 
from 
	rating 
where 
	date = '21.08.2016' 
group by 
	player, 
	bet 
order by 
	player;