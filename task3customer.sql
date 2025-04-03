select * from customer

select DISTINCT name from customer where restaurantid = '1'
select DISTINCT email from customer where restaurantid = '2'
select DISTINCT address from customer where restaurantid = '3'
select DISTINCT contact from customer where restaurantid ='4'
select name, address from customer where restaurantid = '5'
select email, contact from customer where restaurantid = '4'
select contact from customer where restaurantid ='1'
select name, address, contact from customer where restaurantid ='2'

