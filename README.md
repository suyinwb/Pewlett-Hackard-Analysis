# Pewlett Hackard Analysis

## Background

 If the boss were to ask Bobby how many employees are retiring from the Sales department, we would use both of these functions together with joins to generate an answer.

 Because of the number of people leaving each department, the boss has requested three lists that are more specific:

Employee Information: A list of employees containing their unique employee number, their last name, first name, gender, and salary
Management: A list of managers for each department, including the department number, name, and the manager's employee number, last name, first name, and the starting and ending employment dates
Department Retirees: An updated current_emp list that includes everything it currently has, but also the employee's departments


## Overview of Project
### Purpose
After executing the code and checking the results, a few folks are are appearing twice. Maybe they moved departments?

Bobby would like to know the following:
1. What's going on with the salaries?
2. Why are there only five active managers for nine departments?
3. Why are some employees appearing twice?

The department head for Sales was a little surprised at how many folks will be leaving, so has asked for an additional list, containing only employees in their department. The new list Bobby will need to make will contain everything in the retirement_info table, only tailored for the Sales team.

The same manager asking for a list of retiring employees has asked for a list of employees in both the Sales and Development departments because, together, both managers want to try a new mentoring program for employees getting ready to retire. Instead of having a large chunk of their workforce retiring, they want to introduce a mentoring program: experienced and successful employees stepping back into a part-time role instead of retiring completely. Their new role in the company would be as a mentor to the newly hired folks. Before they can present their idea to the CEO, they'd like to have an idea of how many people between the departments they would need to pitch their idea to.

## Analysis And Challenges

## Methodology: Analytics Paradigm

#### 1. Decomposing the Ask
The students_complete.csv file shows evidence of academic dishonesty; specifically, reading and math grades for Thomas High School ninth graders appear to have been altered. Uphold state-testing standards by keeping only Thomas High School scores for 10th to 12th graders.

#### 2. Identify the Datasource
* students_complete.csv
* schools_complete.csv

#### 3. Define Strategy & Metrics
**Resource:** Python 3.6, Anaconda, Jupyter Notebook

1. Change Thomas High School 9th graders reading & math scores to NaN so we do not calculate any scores for Thomas High School 9th graders.
1. Recalculate the different scores for Thomas High School by only calculating the

#### 4. Data Retrieval Plan
Read CSV with pandas
```
school_data_to_load = "resources/schools_complete.csv"
student_data_to_load = "resources/students_complete.csv"
school_data_df = pd.read_csv(school_data_to_load)
student_data_df = pd.read_csv(student_data_to_load)
```

#### 5. Assemble & Clean the Data
* Cleaning student names by removing prefixes & suffixes
* Cleaning all Thomas High School 9th grades student scores by making them NaN

#### 6. Analyse for Trends
Compare results for all analysis from before student scores cleaning and after student scores cleaning.

#### 7. Acknowledging Limitations
* Self limitations with pandas, therefore reference Stackover Flow multiple times.

#### 8. Making the Call:
The "Proper" Conclusion is indicated below on [Summary](#summary)

## Analysis

First, start by nullifying the both the scores for Thomas High School 9th graders.

>Old Thomas High School 9th Graders Scores

![Old Thomas High School 9th Graders Scores](resources/Old_student_data.png)

>New Thomas High School 9th Graders Scores

![New Thomas High School 9th Graders Scores](resources/Clean_student_data.png)

When we check the student data, we will confirm that there are _**416**_ students with no scores and that corresponds to the total students from Thomas High School in 9th grade. See the code below for reference.


## Summary
From the analysis above, the most significant differences are due to Thomas High Schools' academic dishonesty are:

1. Thomas High School overall scores fell from _**90.94% to 65.07%**_. This means _**25.9%**_ discrepancy.
1. Thomas High School math scores fell from _**93.27%% to 66.91%**_. This means _**26.36%**_ discrepancy.
1. Thomas High School reading scores fell from _**97.3% to 69.66%**_. This means _**27.64%**_ discrepancy.


## Appendix
