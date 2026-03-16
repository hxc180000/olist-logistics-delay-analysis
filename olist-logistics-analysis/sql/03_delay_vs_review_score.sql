-- Compare average review scores between delayed and on-time deliveries

select 
	case 
		when o.order_delivered_customer_date > o.order_estimated_delivery_date
		then 'delay'
		else 'on_time'
	end as delivery_status,
	count(*) as num_orders,
	round(avg(r.review_score),2) as avg_review_score
from orders o
join order_reviews r
on o.order_id = r.order_id 
where o.order_delivered_customer_date is not null
and o.order_estimated_delivery_date is not null
and o.order_status = 'delivered'
group by 
case
	when o.order_delivered_customer_date > o.order_estimated_delivery_date
	then 'delay'
	else 'on_time'
end;



	