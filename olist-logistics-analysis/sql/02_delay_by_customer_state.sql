
-- Calculate delivery delay rate grouped by customer state

select 
	c.customer_state as state,
	round(
		avg(
			case
				when order_delivered_customer_date > order_estimated_delivery_date
				then 1 else 0
			end
			)* 100,2) as delay_rate
from orders as o
inner join customers as c 
on o.customer_id = c.customer_id 
where o.order_status = 'delivered'
and o.order_delivered_customer_date is not null
and o.order_estimated_delivery_date is not null
group by state
order by delay_rate desc;

--
--Delivery performance varies significantly across Brazilian states.
--States such as AL and MA show delay rates above 19%, while major logistics hubs like SP and MG maintain delay rates below 6%.