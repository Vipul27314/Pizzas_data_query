-- 26. join two tables. 

SELECT 
    *
FROM
    vipul_1.pizza_types
        JOIN
    vipul_1.pizzas ON vipul_1.pizza_types.pizza_type_id = vipul_1.pizzas.pizza_type_id;
    
-- 27. The INNER JOIN returns only the rows where there is a matching pizza_type_id in both the pizza_types and pizzas, 
-- focusing on pizzas size is large.

SELECT 
    vipul_1.pizza_types.pizza_type_id,
    vipul_1.pizza_types.name,
    vipul_1.pizza_types.category,
    vipul_1.pizzas.size,
    vipul_1.pizzas.price
FROM
    vipul_1.pizza_types
        INNER JOIN
    vipul_1.pizzas ON vipul_1.pizza_types.pizza_type_id = vipul_1.pizzas.pizza_type_id
WHERE
    size = 'L';
    
 
-- 28. Suppose we want to retrieve all the pizzas along with their corresponding pizza_types information. 

SELECT 
    vipul_1.pizza_types.pizza_type_id,
    vipul_1.pizza_types.name,
    vipul_1.pizzas.pizza_id,
    vipul_1.pizzas.size,
    vipul_1.pizzas.price
FROM
    vipul_1.pizzas
        LEFT JOIN
    vipul_1.pizza_types ON vipul_1.pizzas.pizza_type_id = vipul_1.pizza_types.pizza_type_id;
    

-- 29. Suppose we want to retrieve all the pizza_types along with their corresponding pizzas information. 

SELECT 
    vipul_1.pizzas.pizza_type_id,
    vipul_1.pizza_types.pizza_type_id,
    vipul_1.pizza_types.name,
    vipul_1.pizza_types.category,
    vipul_1.pizza_types.ingredients
FROM
    vipul_1.pizza_types
        RIGHT JOIN
    vipul_1.pizzas ON vipul_1.pizza_types.pizza_type_id = vipul_1.pizzas.pizza_type_id;

-- 30. join two table in full outer join. 

SELECT 
    *
FROM
    vipul_1.pizza_types
        LEFT JOIN
    vipul_1.pizzas ON vipul_1.pizza_types.pizza_type_id = vipul_1.pizzas.pizza_type_id 
UNION 

SELECT 
    *
FROM
    vipul_1.pizzas
        LEFT JOIN
    vipul_1.pizza_types ON vipul_1.pizzas.pizza_type_id = vipul_1.pizza_types.pizza_type_id;


-- 31. Retrieve the list of price and their category pizza_types where the category pizza_types is Classic. 

SELECT 
    vipul_1.pizzas.price, vipul_1.pizza_types.category
FROM
    vipul_1.pizzas
        INNER JOIN
    vipul_1.pizza_types ON vipul_1.pizzas.pizza_type_id = vipul_1.pizza_types.pizza_type_id
        AND vipul_1.pizza_types.category = 'Classic';
        

-- 32. Retrieve pizza types name and their corresponding pizzas size where the pizzas size is either 'M' or 'L'.
        
SELECT 
    vipul_1.pizza_types.name, vipul_1.pizzas.size
FROM
    vipul_1.pizza_types
        INNER JOIN
    vipul_1.pizzas ON vipul_1.pizza_types.pizza_type_id = vipul_1.pizzas.pizza_type_id
        AND vipul_1.pizzas.size IN ('M' , 'L');
 -- 33. Retrieve pizzas price , pizza types category , and the pizza types name for pizzas price is more than 15 and pizzas_types in category is mediam.       
        
SELECT 
    vipul_1.pizzas.price,
    vipul_1.pizza_types.category,
    vipul_1.pizza_types.name
FROM
    vipul_1.pizzas
        INNER JOIN
    vipul_1.pizza_types ON vipul_1.pizzas.pizza_type_id = vipul_1.pizza_types.pizza_type_id
        AND vipul_1.pizzas.price > 15
        AND vipul_1.pizza_types.category = 'M';
        

-- 34. Retrieve the order details pizza id , their quantity, pizza types category , and pizzas price. 
        
SELECT 
    vipul_1.order_details.pizza_id,
    vipul_1.order_details.quantity,
    vipul_1.pizza_types.category,
    vipul_1.pizzas.price
FROM
    vipul_1.pizza_types
        JOIN
    vipul_1.pizzas ON vipul_1.pizza_types.pizza_type_id = vipul_1.pizzas.pizza_type_id
        INNER JOIN
    vipul_1.order_details ON vipul_1.order_details.pizza_id = vipul_1.pizzas.pizza_id;
    


