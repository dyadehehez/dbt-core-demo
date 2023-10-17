with cc_info as (

    select * from {{ ref('stg_cc_info') }}

),

transaction as (
    select * from {{ ref('stg_transaction')}}
),

-- answering the question what is the largest amount per state
joined as (
SELECT cc_limit, state FROM transaction t
LEFT JOIN cc_info c
USING (credit_card)
),
final as(
SELECT state, MAX(cc_limit) AS max_credit_limit_of_state FROM joined
GROUP BY state
ORDER BY max_credit_limit_of_state DESC
LIMIT 5
)
select * from final