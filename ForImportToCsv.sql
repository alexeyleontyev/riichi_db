--для импорта в csv

select 
	r1.game_num, 
	r1.date, 
	r1.player as player1, 
	r1.points, 
	r2.player as player2, 
	r2.points + 15000 as points, 
	r3.player as player3, 
	r3.points + 35000 as points, 
	r4.player as player4, 
	r4.points + 50000 as points 
from 
	rating r1, 
	rating r2, 
	rating r3, 
	rating r4 
where 
	r1.game_num = r2.game_num 
	and r2.game_num = r3.game_num 
	and r3.game_num = r4.game_num 
	and r1.place = 1 
	and r2.place = 2 
	and r3.place = 3 
	and r4.place = 4 
order by 
	r1.game_num