SELECT 
    TRANSACTION_DESCRIPTION, CUSTOMER_IDENTIFIER, RECORD_DATE,	ACCOUNT_TYPE_CODE,
    ACCOUNT_BALANCE,AMT,	EVENT_NUMBER, PRODUCT_CODE,CHANNEL,ACCOUNT_NUMBER,	TRANSACTION_REFERENCE,
    COUNT(*) AS duplicate_count
FROM transactiondata
GROUP BY      TRANSACTION_DESCRIPTION, CUSTOMER_IDENTIFIER, RECORD_DATE,	ACCOUNT_TYPE_CODE,
    ACCOUNT_BALANCE,AMT,	EVENT_NUMBER, PRODUCT_CODE,CHANNEL,ACCOUNT_NUMBER,	TRANSACTION_REFERENCE
HAVING COUNT(*) > 1
;