-- Calculate delivery delay rate by product category

select p.product_category_name as product_category,
	count(*) as total_orders,
	round(avg(case 
		when o.order_delivered_customer_date > o.order_estimated_delivery_date
		then 1 else 0
	end)*100,2) as delay_rate_percent
from orders o 
join order_items i
on o.order_id = i.order_id 
join products p
on i.product_id = p.product_id 
where o.order_status = 'delivered'
and o.order_delivered_customer_date is not null
and o.order_estimated_delivery_date is not null
and p.product_category_name is not null
group by product_category
having count(*) > 100
order by delay_rate_percent desc;