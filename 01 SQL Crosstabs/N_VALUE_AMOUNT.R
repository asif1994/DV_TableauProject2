N_VALUE_AMOUNT <- data.frame(fromJSON(getURL(URLencode(gsub("\n", " ", '129.152.144.84:5001/rest/native/?query= 
"SELECT ZIPCODE, GENDER, Amount, nth_value(Amount, 2)
OVER (PARTITION BY ZIPCODE, GENDER order by Amount desc) SECOND_AMOUNT 
FROM Fed_Con_Zipcode
order by 1 asc"
')),httpheader=c(DB='jdbc:oracle:thin:@129.152.144.84:1521:ORCL', USER='C##cs329e_ac52722', PASS='orcl_ac52722', MODE='native_mode', MODEL='model', returnDimensions = 'False', returnFor = 'JSON'), verbose = TRUE)))
tbl_df(N_VALUE_AMOUNT)