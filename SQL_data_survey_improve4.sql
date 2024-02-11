SELECT [survey_ID]
      ,[when_taken_date] AS surveyed_date
      ,[when_taken_time] AS survey_time
      ,[time_spent_mins] AS survey_duration

      ,RTRIM(LOWER(CASE
                WHEN [best_fit_title] LIKE 'Student%' THEN 'Looking' 
                WHEN [best_fit_title] LIKE 'Business Intelligence%' THEN 'Business Intelligence' 
                WHEN [best_fit_title] LIKE 'software engineer%' THEN 'Software Engineer' 
                WHEN [best_fit_title] LIKE 'Web Developer%' THEN 'Software Engineer' 
                WHEN [best_fit_title] LIKE 'Software Engineer%' THEN 'Software Engineer' 
                WHEN [best_fit_title] LIKE 'Software Developer%' THEN 'Software Engineer' 
                WHEN [best_fit_title] LIKE 'Junior Software%' THEN 'Software Engineer' 

                WHEN [best_fit_title] LIKE 'Technical consult%' THEN 'Consultant'
                WHEN [best_fit_title] LIKE 'Tableau admin%' THEN 'Business Intelligence'
                WHEN [best_fit_title] LIKE 'Systems configuration%' THEN 'Network Engineer'
                WHEN [best_fit_title] LIKE 'System Administrator%' THEN 'Network Engineer'
                WHEN [best_fit_title] LIKE 'Support Engineer%' THEN 'Network Engineer'
                WHEN [best_fit_title] LIKE '%Supply Chain%' THEN 'Billing and Operations Specialist'
                WHEN [best_fit_title] LIKE 'ads operations%' THEN 'Sales & marketing'

                WHEN [best_fit_title] LIKE 'billing analyst%' THEN 'Billing and Operations Specialist'

                WHEN [best_fit_title] LIKE 'Software support%' THEN 'Support Specialist'
                WHEN [best_fit_title] LIKE 'Reporting Adm%' THEN 'Support Specialist'
                WHEN [best_fit_title] LIKE 'Incident Manager%' THEN 'Support Specialist'
                WHEN [best_fit_title] LIKE 'I work with data tools%' THEN 'Other'
                WHEN [best_fit_title] LIKE 'GIS Analyst%' THEN 'Other'
                WHEN [best_fit_title] LIKE 'Driver%' THEN 'Other'
                WHEN [best_fit_title] = 'Director' THEN 'Other'
                WHEN [best_fit_title] = 'account manager' THEN 'Other'
                WHEN [best_fit_title] = 'PMO' THEN 'Project or Project Management'
                WHEN [best_fit_title] = 'Product Owner' THEN 'Project or Project Management'

                WHEN [best_fit_title] LIKE 'Teacher%' THEN 'Educator'

                WHEN [best_fit_title] LIKE 'Financ%' THEN 'Finance Analyst'
                WHEN [best_fit_title] LIKE 'FP&A Analyst%' THEN 'Finance Analyst'

                WHEN [best_fit_title] LIKE '%Business Analy%' THEN 'Business Analyst'
                WHEN [best_fit_title] LIKE '%Security Analyst%' THEN 'Security Analyst'
                WHEN [best_fit_title] LIKE '%Research%' THEN 'Researcher'
                WHEN [best_fit_title] LIKE 'RF Engineer%' THEN 'Other'
                WHEN [best_fit_title] LIKE 'Presalesr%' THEN 'Sales & marketing'
                WHEN [best_fit_title] LIKE '%social media%' THEN 'Sales & marketing'
                WHEN [best_fit_title] LIKE 'presales engineer%' THEN 'Sales & marketing'

                WHEN [best_fit_title] LIKE 'dba%' THEN 'Database Admin'
                WHEN [best_fit_title] LIKE 'database manager%' THEN 'Database Admin'
                WHEN [best_fit_title] LIKE 'data steward%' THEN 'Database Admin'
                WHEN [best_fit_title] LIKE 'data manager%' THEN 'Database Admin'

                WHEN [best_fit_title] LIKE 'Predictive Analyst%' THEN 'Business Intelligence'
                WHEN [best_fit_title] LIKE 'Power Bi%' THEN 'Business Intelligence'
                WHEN [best_fit_title] LIKE 'Insights analyst%' THEN 'Business Intelligence'
                WHEN [best_fit_title] LIKE 'Informatics%' THEN 'Business Intelligence'
                WHEN [best_fit_title] = 'bi developer' THEN 'Business Intelligence'

                WHEN [best_fit_title] LIKE 'Marketing Data Specialist%' THEN 'Data Scientist or Analyst'
                WHEN [best_fit_title] LIKE '%Business Intelligence%' THEN 'Business Intelligence'
                WHEN [best_fit_title] LIKE 'bi manager%' THEN 'Business Intelligence'
                WHEN [best_fit_title] LIKE 'bi consultant%' THEN 'Business Intelligence'
                WHEN [best_fit_title] LIKE '%market intelligence%' THEN 'Business Intelligence'

                WHEN [best_fit_title] LIKE 'analyst%' THEN 'Other'
                WHEN [best_fit_title] LIKE 'Other%' THEN 'Other'
                WHEN [best_fit_title] LIKE 'Investigation specialist%' THEN 'Other'
                WHEN [best_fit_title] LIKE 'I work with data tools%' THEN 'Other'
                WHEN [best_fit_title] LIKE '%improvement specialist%' THEN 'Other'

                WHEN [best_fit_title] LIKE '%Data Analy%' THEN 'Data Scientist or Analyst'
                WHEN [best_fit_title] LIKE '%Jr. Data Scientist%' THEN 'Data Scientist or Analyst'
                WHEN [best_fit_title] = 'data scientist' THEN 'Data Scientist or Analyst'
                WHEN [best_fit_title] = 'analytics consultant' THEN 'Data Scientist or Analyst'
                WHEN [best_fit_title] = 'data scientist intern' THEN 'Data Scientist or Analyst'
                WHEN [best_fit_title] = 'data integrity' THEN 'Data Scientist or Analyst'
                WHEN [best_fit_title] = 'data coordinator' THEN 'Data Scientist or Analyst'

                WHEN [best_fit_title] LIKE '%analytics manager%' THEN 'Data Architect or Engineer'
                WHEN [best_fit_title] LIKE '%data architect%' THEN 'Data Architect or Engineer'
                WHEN [best_fit_title] = 'Data Engineer' THEN 'Data Architect or Engineer'

                WHEN [best_fit_title] LIKE 'Manager%' THEN 'Other'
                WHEN [best_fit_title] LIKE 'Learning Management Specialist%' THEN 'Educator'

            ELSE [best_fit_title] 
        END)) AS current_role
      ,[switched2data]
      ,[salary_usd]
      ,[industry]
      ,[pref_language]
      ,[how_happy]
      ,[work_life_balance]
      ,[enjoy_coworkers]
      ,[enjoy_management]
      ,[upward_mobility]
      ,[learning_new_things]
      ,[hard2enter_data]
      ,[important4next_role]
      ,[male_female]
      ,[age]
      ,[country]
      ,[education]
      ,[ethnicity]
    INTo data_survey_improvementsv4
  FROM [data_industry_survey].[dbo].[data_survey_improvementsv3]