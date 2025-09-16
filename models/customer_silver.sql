select
C_CUSTKEY,
C_NAME,
C_NATIONKEY,
C_ACCTBAL
from {{ source('dev_bootcamp', 'customer_bronze') }}
where C_CUSTKEY is not null
and C_NATIONKEY != 21