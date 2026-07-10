# Loan_Prediction_Problem_Dataset
End-to-end data analytics project using SQL and Power BI to analyse loan applicant profiles and identify the key factors that contribute to how much people borrow.
# Loan_Prediction_Problem_Dataset
End-to-end data analytics project using SQL and Power BI to analyse loan applicant profiles and identify the key factors that contribute to how much people borrow.

## Project Overview

This project analyses a loan prediction dataset to understand who is applying for loans and what factors influence the amount they borrow. SQL was used to explore key applicant statistics, and Power BI was then used to build a detailed, interactive dashboard profiling applicants across demographics, income, education, and credit history.

## Tools Used
SQL (MySQL Workbench) – Data validation and business analysis
Power BI – Interactive dashboard development, DAX measures, and data visualisation

## SQL Analysis
SQL queries were written to answer key questions about the loan applicants, including:

Average loan amount
```sql
select round(avg(LoanAmount),2) as Avg_Loan
from loan_prediction_portfolio.test;
```

Average applicant income
```sql
select round(avg(ApplicantIncome),2) as Avg_Income
from loan_prediction_portfolio.test;
```

Gender distribution
```sql
select Gender, count(*) as Count
from loan_prediction_portfolio.test
group by Gender;
```

Average credit history
```sql
select round(avg(Credit_History),2) as Avg_credithistory
from loan_prediction_portfolio.test;
```

## Power BI Dashboard
The dashboard provides an interactive view of the data using:

KPI Cards
Clustered Column Charts
Clustered Bar Charts
100% Stacked Bar Chart

The dashboard answers questions such as:

- How much do applicants typically borrow?
- Does gender influence loan amount?
- Does marital status influence loan amount?
- Which property area sees the largest loans?
- Does income level affect loan amount?
- Does a coapplicant's income affect loan amount?
- Does education level affect loan amount?
- Does self-employment status affect loan amount?
- Does credit history affect loan amount?
- Does number of dependents affect loan amount?

## DAX Measures
The following calculated columns were created in Power BI to categorise applicants for deeper analysis:

Income category
```
IF('Loan Prediction Problem Dataset'[ApplicantIncome] < 3000, "Low",
IF('Loan Prediction Problem Dataset'[ApplicantIncome] <= 7000, "Medium",
"High"))
```

Coapplicant Income category
```
IF('Loan Prediction Problem Dataset'[CoapplicantIncome] < 3000, "Low",
IF('Loan Prediction Problem Dataset'[CoapplicantIncome] <= 7000, "Medium",
"High"))
```

## Key Insights

**Overall Snapshot**
Across 367 applicants, the average loan amount is 136.14, average applicant income is 4.81K, and the average credit history score is 0.84 — indicating the majority of applicants have a good credit history.

**Gender**
Male applicants make up the clear majority at 286 out of 367, compared to just 70 female applicants. Male applicants also borrow more on average (139) than female applicants (127), making men both the primary applicant group and the higher value borrowers.

**Marital Status**
Married applicants (233) outnumber unmarried applicants (134), and married applicants also borrow more on average (145 vs 122) — likely reflecting the added financial confidence of a dual household income.

**Property Area**
Rural applicants have the highest average loan amount (138.17), narrowly ahead of Urban (136.24) and Semiurban (134.09) — suggesting rural applicants may need larger loans, possibly for property or agricultural purposes.

**Income Category**
High income earners borrow the most on average (213), well above Medium (131) and Low (111) income earners. However, the Medium income group has the highest number of applicants (214), making them the primary applicant group by volume even though they don't borrow the most.

**Coapplicant Income Category**
Applicants with a High income coapplicant borrow significantly more on average (193) than those with a Medium (158) or Low (131) income coapplicant — showing that a financially stronger coapplicant increases borrowing capacity, even though most applicants (307) fall into the Low coapplicant income category.

**Education**
Graduates make up the vast majority of applicants (283 vs 84) and also borrow more on average (141 vs 119) than non-graduates, confirming that higher education level is associated with both greater loan uptake and higher loan amounts.

**Self-Employment**
Self-employed applicants are a small minority (37) but borrow more on average (150) than those who are not self-employed (134, with 307 applicants) — suggesting self-employed individuals may require larger capital for business-related needs.

**Credit History**
The vast majority of applicants (308 out of 367) have a good credit history (1.00), compared to just 59 with a poor credit history (0.00). Interestingly, average loan amount is fairly similar across both groups — 135.79 for good credit history versus 137.98 for poor credit history — suggesting that while credit history strongly affects how many people are approved to apply in the first place, it doesn't significantly change the size of the loan once someone does apply.

**Dependents**
Applicants with no dependents make up the largest group (200 out of 367), but applicants with 2 dependents show the highest average loan amount (154) — suggesting that as financial responsibility at home increases, so does the size of the loan needed to support it.

## Conclusion

The analysis shows that loan amount is influenced by a combination of income, education, marital status, and financial dependents, rather than any single factor alone. Male, married, graduate applicants with strong income levels and supportive coapplicant income consistently borrow the most, while applicants with more dependents and self-employed applicants also tend to require larger loans. These patterns provide a useful profile of typical loan applicants, helping inform future lending strategy.

📁 Repository Contents
loan_prediction_portfolio.sql – SQL data validation and business analysis
LOAN_PREDICTION_PROBLEM_DATA_SET_FINALE.pbix – Interactive Power BI dashboard
README.md – Project documentation

👤 Author

Nombulelo Belu

BCom Economic Science with Econometrics Graduate

Aspiring Data Analyst
