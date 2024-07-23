select o.id, o.employee_id, o.order_date, o.shipped_date, o.shipper_id, o.ship_name, o.ship_address,
       o.ship_city, o.ship_state_province, o.ship_zip_postal_code, o.ship_country_region, o.shipping_fee,
       o.taxes, o.payment_type, o.paid_date, o.notes, o.tax_rate, o.tax_status_id, o.status_id,
       os.status_name,
       c.id, c.company, c.last_name, c.first_name, c.email_address, c.job_title, c.business_phone,
       c.home_phone, c.mobile_phone, c.fax_number, c.address, c.city, c.state_province,
       c.zip_postal_code, c.country_region, c.web_page, c.notes, c.attachments
from orders o
inner join customers c on o.customer_id = c.id
inner join orders_status os on o.status_id = os.id
left join orders_tax_status ots on o.tax_status_id = ots.id
inner join shippers sh on o.shipper_id = sh.id;

select o.id, o.employee_id, o.order_date, o.shipped_date, o.shipper_id, o.ship_name, o.ship_address,
       o.ship_city, o.ship_state_province, o.ship_zip_postal_code, o.ship_country_region, o.shipping_fee,
       o.taxes, o.payment_type, o.paid_date, o.notes, o.tax_rate, o.tax_status_id, o.status_id,

       c.id, c.company, c.last_name, c.first_name, c.email_address, c.job_title, c.business_phone,
       c.home_phone, c.mobile_phone, c.fax_number, c.address, c.city, c.state_province,
       c.zip_postal_code, c.country_region, c.web_page, c.notes, c.attachments
from orders o
inner join customers c on o.customer_id = c.id
inner join shippers sh on o.shipper_id = sh.id
inner join orders_status os on o.status_id = os.id;

select c.company as customer_company, c.last_name as customer_last_name, c.first_name as customer_first_name,
       sum(od.quantity * od.unit_price * (1 - od.discount)) as total_sales
from customers c
join orders o on c.id = o.customer_id
join order_details od on o.id = od.order_id
group by c.company, c.last_name, c.first_name
order by total_sales desc
limit 10;


select p.product_name, sum(od.quantity) as total_sold
from products p
    join order_details od on p.id = od.product_id
group by p.product_name
order by total_sold desc
limit 10;

select c.city, sum(od.quantity * od.unit_price * (1 - od.discount)) as total_sales
from customers c
    join orders o on c.id = o.customer_id
    join order_details od on o.id = od.order_id
group by c.city
order by total_sales desc
limit 10;

select c.company as customer_company, c.last_name as customer_last_name, c.first_name as customer_first_name,        sum(od.quantity * od.unit_price * (1 - od.discount)) as total_sales
from customers c
    join orders o on c.id = o.customer_id
    join order_details od on o.id = od.order_id
group by c.company, c.last_name, c.first_name
order by total_sales desc
limit 10;

select p.product_name, s.company as supplier_company, sum(od.quantity) as total_sold
from products p
    join order_details od on p.id = od.product_id
    join orders o on od.order_id = o.id
    join customers c on o.customer_id = c.id
    join suppliers s on p.supplier_ids = s.id
where c.company is not null
group by p.product_name, s.company
order by total_sold desc
limit 10;

select p.product_name, max(p.list_price) as max_price
from products p
group by p.product_name
order by max_price desc
limit 10;

select s.company as supplier_company, count(po.id) as total_orders
from suppliers s
    join purchase_orders po on s.id = po.supplier_id
group by s.company
order by total_orders desc
limit 10;

select p.product_name, sum(od.quantity) as total_sold
from products p
    join order_details od on p.id = od.product_id
group by p.product_name
order by total_sold desc
limit 10;


 SELECT DATE_FORMAT(o.order_date, '%Y') AS order_year,
        SUM(od.quantity * od.unit_price * (     1 - od.discount   )) AS total_sales
 FROM orders AS o
     JOIN order_details AS od   ON o.id = od.order_id
 GROUP BY   order_year
 ORDER BY   order_year;


select p.category, sum(od.quantity * od.unit_price * (1 - od.discount)) as total_sales
from products p
    join order_details od on p.id = od.product_id
group by p.category
order by total_sales desc;


select p.category, sum(od.quantity * od.unit_price * (1 - od.discount)) as total_sales
from products p
    join order_details od on p.id = od.product_id
group by p.category
order by total_sales desc;


select p.product_name, sum(od.quantity) as total_sold, c.city
from products p
    join order_details od on p.id = od.product_id
    join orders o on od.order_id = o.id
    join customers c on o.customer_id = c.id
group by p.product_name, c.city
order by total_sold desc limit 10;


SELECT p.id, p.product_name FROM products p;