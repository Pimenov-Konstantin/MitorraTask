show databases;
use mitorra;

select id, value from property_value;

select category.name,
property.name from category join product
on category.id = product.category_id join property_value
on product.id = property_value.product_id join property
on property_value.property_id = property.id group by category.id,
property_value.property_id having count(product.id) = 1;