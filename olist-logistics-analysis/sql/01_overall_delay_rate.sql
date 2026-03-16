-- 01_overall_delay_rate.sql
-- Calculate the percentage of delivered orders that arrived after the estimated delivery date

select
	round(
	avg(
	case 
		when order_delivered_customer_date > order_estimated_delivery_date
		then 1 else 0
	end
	)*100, 2)
from orders
where order_status = 'delivered'
and order_delivered_customer_date is not null
and order_estimated_delivery_date is not null;