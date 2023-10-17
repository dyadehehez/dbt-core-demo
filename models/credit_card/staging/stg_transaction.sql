select
    credit_card,
    date as transaction_date,
    transaction_dollar_amount as amount,
    long,
    lat
    
from {{ source('rssl_source', 'transaction') }}