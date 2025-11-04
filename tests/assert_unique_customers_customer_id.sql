select
    customer_id,
    count(*) as unique_customer
from {{ ref('dim_customers') }}
group by customer_id
having unique_customer > 1
