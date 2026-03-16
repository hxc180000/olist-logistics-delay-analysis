-- Calculate delivery delay rate grouped by seller location


select s.seller_state as seller_state,
	count(*) as total_orders,
	round(avg(
		case 
			when o.order_delivered_customer_date > o.order_estimated_delivery_date
			then 1 
			else 0
		end
	)*100,2) as delay_rate

from orders o 
join order_items i 
on o.order_id = i.order_id 
join sellers s
on i.seller_id = s.seller_id 
where o.order_delivered_customer_date is not null
and o.order_estimated_delivery_date is not null
and o.order_status = 'delivered'
group by s.seller_state 
having count(*) > 100
order by delay_rate desc;