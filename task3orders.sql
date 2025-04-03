select * from orders

select DISTINCT restaurantid from orders where cusine = 'Indian'
select DISTINCT cusine from orders where cust_id = '1'
select DISTINCT dish from orders where restaurantid = '2'
select DISTINCT cusine from orders where cust_id = '1'
select cusine, dish from orders where cust_id = '2'
select chief from orders where cusine = 'Indian'
select tableno from orders where cusine = 'Chinese'
select dish, qty, chief from orders where cusine = 'Indian'
