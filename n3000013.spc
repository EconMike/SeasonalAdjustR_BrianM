series{
 title          ='UN M 16-19'
 span           =(2003.1,)
 file           ='X:\talks\RPrimer_April2022\data\n3000013.dat'
 format         ='datevalue'
 period         =12
 precision      =5
 decimals       =2
 missingcode    =0
 }
transform{
 function       =none
 }
regression{
 variables      =(ls2008.may
                 tc2020.Apr
                  )
 }
arima{
 model          =(0 1 1)(0 1 1)
 }
estimate{
 exact          =arma
 maxiter        =10000
 #print          =(default)
 }
forecast{
 maxlead        =60
 }
check{
 print          =(none +acf +acfplot +normalitytest)
 }
x11{
 seasonalma     =s3x9 
 trendma        =13 
 #print          =(brief +d8b +d9 +d12 +d13 +residualseasf)
 save           =(d10 d11 d12 d13)
 #savelog        =(m1 m2 m3 m4 m5 m6 m7 m8 m9 m10 m11 q q2 fb1 fd8 msf ids msr)
 }

