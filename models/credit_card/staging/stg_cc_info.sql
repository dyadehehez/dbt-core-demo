select
    credit_card,
    city,
    state,
    zipcode,
    credit_card_limit as cc_limit
    

from {{ source('rssl_source', 'cc_info') }}