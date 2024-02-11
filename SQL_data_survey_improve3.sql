SELECT 
        [survey_ID]
      ,[when_taken_date]
      ,[when_taken_time]
      ,[time_spent_mins]
      ,[best_fit_title]
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
      ,CASE 
        WHEN [ethnicity] = 'Black or African American' THEN 'African, Black or African American' ELSE [ethnicity] END AS ethnicity
    INTO data_survey_improvementsv3
  FROM [data_industry_survey].[dbo].[data_survery_improvementsv2]