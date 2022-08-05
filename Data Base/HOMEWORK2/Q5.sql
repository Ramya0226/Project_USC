/*/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////*/

/*				Data Base Used : LIVE SQL Oracle

Q5.Create your own query! What else would you like to learn, from the data? Describe/list the question, and come up with the query to answer it. You'll get 1 extra point if your query involves table division [be sure to indicate this in your README].

//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////*/


select Symptom,count(Symptom) from Self_Report s
Where s.Emp_ID IN 
(
    select Emp_ID from Covid_Test 
    where
    Test_Result = 'Positive'
)
GROUP BY Symptom
ORDER BY Count(Symptom) DESC
FETCH FIRST 1 ROWS ONLY;