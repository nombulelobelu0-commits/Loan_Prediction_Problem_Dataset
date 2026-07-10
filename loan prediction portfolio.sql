
SELECT * FROM loan_prediction_portfolio.test;


-- average loan amount
select round(avg(LoanAmount),2) as Avg_Loan
from loan_prediction_portfolio.test;

-- average applicant income
select round(avg(ApplicantIncome),2) as Avg_Income
from loan_prediction_portfolio.test;

-- gender distribution
select Gender, count(*) as Count
from loan_prediction_portfolio.test
group by Gender;

-- average credit history
select round(avg(Credit_History),2) as Avg_credithistory
from loan_prediction_portfolio.test;