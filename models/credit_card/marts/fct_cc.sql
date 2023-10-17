with cc_info as (

    select * from {{ ref('stg_cc_info') }}

),

transaction as (
    select * from {{ ref('stg_transaction')}}
),


-- selecting only number columns both tables
final as (
    SELECT c.credit_card, t.transaction_date, amount, cc_limit 
        FROM transaction t
        LEFT JOIN cc_info c
        USING (credit_card)
)
select * from final