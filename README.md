# Pewlett Hackard Analysis

## Background

Creating a community outreach website for middle school STEM students.

My company is going to focus on climate change, and since you know how to use Matplotlib, you decide to create some visualizations that showcase the weather parameters you retrieved with changing latitude for the 500-plus cities from all over the world. The students will then be able to use these visualizations to explore how weather parameters change based on latitude.

## Overview of Project
Deliverables for the analysis of the school district:
* A high-level snapshot of the district's key metrics, presented in a table format
* An overview of the key

### Purpose

Results:
* How is the district summary affected?
* How is the school summary affected?

Summarize four changes in the updated school district analysis after reading and math scores for the ninth grade at Thomas High School have been replaced with NaNs.

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
