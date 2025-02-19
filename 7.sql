 -- Find Average, Minimum, and Maximum Base Pay
 select  round(max(BasePay),0) As Maximum_BasePay, round(min(BasePay),0) As Minimum_BasePay, round(avg(BasePay),0) As Average_BasePay
 from salary
 
 
 