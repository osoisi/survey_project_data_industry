SELECT
     [Unique_ID] AS survey_ID
      ,[Date_Taken_America_New_York] AS date_taken
      ,[Time_Taken_America_New_York] AS time_taken
      ,DATEPART(hour,Time_Spent)*60 + DATEPART(minute,Time_Spent) AS time_spent_mins
      ,RIGHT(RTRIM([Q1_Which_Title_Best_Fits_your_Current_Role]),LEN(RTRIM([Q1_Which_Title_Best_Fits_your_Current_Role]))-CHARINDEX(':',RTRIM([Q1_Which_Title_Best_Fits_your_Current_Role]))) AS best_fit_title
      ,[Q2_Did_you_switch_careers_into_Data] AS switched2data
      ,[Q3_Current_Yearly_Salary_in_USD] AS salary_usd
     
        ,RIGHT(RTRIM([Q4_What_Industry_do_you_work_in]), LEN(RTRIM([Q4_What_Industry_do_you_work_in]))-CHARINDEX(':', RTRIM([Q4_What_Industry_do_you_work_in]))) AS industry
      ,[Q5_Favorite_Programming_Language] AS pref_lang
      ,[Q6_How_Happy_are_you_in_your_Current_Position_with_the_following_Salary] AS how_happy
      ,[Q6_How_Happy_are_you_in_your_Current_Position_with_the_following_Work_Life_Balance] AS work_life_balance
      ,[Q6_How_Happy_are_you_in_your_Current_Position_with_the_following_Coworkers] AS enjoy_coworkers
      ,[Q6_How_Happy_are_you_in_your_Current_Position_with_the_following_Management] AS enjoy_management
      ,[Q6_How_Happy_are_you_in_your_Current_Position_with_the_following_Upward_Mobility] AS upward_mobility
      ,[Q6_How_Happy_are_you_in_your_Current_Position_with_the_following_Learning_New_Things] AS learning_new_things
      ,[Q7_How_difficult_was_it_for_you_to_break_into_Data] AS hard2enter_data
      ,[Q8_If_you_were_to_look_for_a_new_job_today_what_would_be_the_most_important_thing_to_you] AS important4next_role
      ,[Q9_Male_Female] AS male_female
      ,[Q10_Current_Age] AS age
      ,
      RIGHT(RTRIM([Q11_Which_Country_do_you_live_in]), LEN(RTRIM([Q11_Which_Country_do_you_live_in]))-CHARINDEX(':',RTRIM([Q11_Which_Country_do_you_live_in]))) AS country
      ,[Q12_Highest_Level_of_Education] AS education,
      [Q13_Ethnicity]
      ,RIGHT(RTRIM([Q13_Ethnicity]), LEN(RTRIM([Q13_Ethnicity]))-CHARINDEX(':',RTRIM([Q13_Ethnicity]))) as ethnicity

  FROM [data_industry_survey].[dbo].[data_survey_table_main]