MAX_AMOUNT_DIFF <- data.frame(fromJSON(getURL(URLencode(gsub("\n", " ", '129.152.144.84:5001/rest/native/?query= 
"SELECT ZIPCODE, GENDER, Amount, last_value(MAX_AMOUNT) 
OVER (PARTITION BY ZIPCODE, GENDER order by Amount) MAX_AMOUNT, last_value(MAX_AMOUNT)
OVER (PARTITION BY ZIPCODE, GENDER order by Amount) - AMOUNT AMOUNT_DIFF
from
(SELECT ZIPCODE, GENDER, AMOUNT, max(amount)
OVER (PARTITION BY GENDER) MAX_AMOUNT
FROM Fed_Con_Zipcode)
order by 1,2,3,4 asc"
')),httpheader=c(DB='jdbc:oracle:thin:@129.152.144.84:1521:ORCL', USER='C##cs329e_ac52722', PASS='orcl_ac52722', MODE='native_mode', MODEL='model', returnDimensions = 'False', returnFor = 'JSON'), verbose = TRUE)))
