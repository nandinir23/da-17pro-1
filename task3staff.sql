select * from staff

select DISTINCT name from staff where bloodgrp = 'O+'
select DISTINCT stafftype from staff where restaurantid = '1'
select DISTINCT stafftype from staff where bloodgrp = 'A+'
select DISTINCT bloodgrp from staff where restaurantid = '2'
select name, stafftype, salary from staff where restaurantid = '1'
select restaurantid from staff where bloodgrp = 'B+'
select bloodgrp, restaurantid from staff where stafftype = 'cheff'
select contact, address from staff where stafftype = 'waiter'