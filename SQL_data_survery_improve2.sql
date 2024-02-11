SELECT [survey_ID]
      ,[date_taken] AS when_taken_date
      ,[time_taken] AS when_taken_time
      ,[time_spent_mins]
      ,[best_fit_title]
      ,[switched2data]
      ,[salary_usd]
      ,[industry]
      ,RIGHT(RTRIM(UPPER([pref_lang])),LEN(RTRIM(UPPER([pref_lang])))-CHARINDEX(':',RTRIM(UPPER([pref_lang])))) AS pref_language
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
      ,CASE 
            WHEN [country] LIKE 'Other%' THEN 'Other' 
            WHEN [country] LIKE 'uzb%' THEN 'Uzbekistan' 
            WHEN [country] LIKE 'Perú' THEN 'Peru'
            WHEN [country] LIKE 'Africa (Nigeria)%' THEN 'Nigeria'
            WHEN [country] LIKE 'nigeria%' THEN 'Nigeria'
            WHEN [country] LIKE 'turkey%' THEN 'Turkey'
            WHEN [country] LIKE 'ghana%' THEN 'Ghana'
            WHEN [country] LIKE 'indonesia%' THEN 'Indonesia'
            WHEN [country] LIKE 'SG%' THEN 'Singapore'
            WHEN [country] LIKE 'kenua%' THEN 'Kenya'
            WHEN [country] LIKE 'indonesia%' THEN 'Indonesia'
            WHEN [country] LIKE 'Ire%' THEN 'Ireland'
            WHEN [country] LIKE 'Fin%' THEN 'Finland'
            WHEN [country] = 'Austr' THEN 'Austria'
            WHEN [country] LIKE '%Somalia%' THEN 'Somalia'
            WHEN [country] LIKE 'Brazik%' THEN 'Brazil'
            WHEN [country] LIKE 'Aisa%'THEN NULL
            WHEN [country] LIKE 'Leba%' THEN NULL
            WHEN [country] LIKE 'Portugsl%' THEN 'Portugal'
            WHEN [country] LIKE 'Republic democratic of Congo%' THEN 'Congo DRC'
            ELSE [country]
            END AS country
      ,[education]
    
      ,CASE 
        WHEN [ethnicity] LIKE 'Brown%' THEN NULL
        WHEN [ethnicity] LIKE 'Race isn''t a thing%' THEN NULL
        WHEN [ethnicity] LIKE 'Black African%' THEN 'Black or African American'
        WHEN [ethnicity] LIKE 'Human%' THEN NULL
        WHEN [ethnicity] LIKE 'Middleeas%' THEN 'Asian or Asian American'
        WHEN [ethnicity] LIKE 'Mixed%' THEN 'Mixed'
        WHEN [ethnicity] LIKE 'Nigeria%' THEN 'Black or African American'
        WHEN [ethnicity] LIKE 'African%' THEN 'Black or African American'
        WHEN [ethnicity] LIKE 'South Asian%' THEN 'Asian or Asian American'
        WHEN [ethnicity] LIKE 'arab%' THEN 'Asian or Asian American'
        WHEN [ethnicity] LIKE 'South Indian%' THEN 'Asian or Asian American'
        WHEN [ethnicity] LIKE 'Sudanese African%' THEN 'Black or African American'
        WHEN [ethnicity] LIKE 'Kenyan African%' THEN 'Black or African American'
        WHEN [ethnicity] LIKE 'Indian%' THEN 'Asian or Asian American'
        WHEN [ethnicity] LIKE 'Prefer not to ans%' THEN NULL
        WHEN [ethnicity] LIKE 'Melay%' THEN 'Asian or Asian American'
        WHEN [ethnicity] LIKE 'Latino with Italian roots%' THEN 'Hispanic or Latino'
        WHEN [ethnicity] LIKE 'Greek%' THEN 'White or Caucasian'
        WHEN [ethnicity] LIKE 'Egyp%' THEN 'Black or African American'
        WHEN [ethnicity] LIKE 'N/A%' THEN NULL
        WHEN [ethnicity] LIKE 'Dravidian' THEN NULL
        WHEN [ethnicity] LIKE 'Bla' THEN 'Black or African American'
        WHEN [ethnicity] LIKE 'Bi-racial people%' THEN NULL
        WHEN [ethnicity] LIKE 'Bangladeshi%' THEN 'Asian or Asian American'
        WHEN [ethnicity] LIKE 'India%' THEN 'Asian or Asian American'
        WHEN [ethnicity] LIKE 'Kurdish%' THEN 'Asian or Asian American'
        WHEN [ethnicity] LIKE 'Asian%' THEN 'Asian or Asian American'
        WHEN [ethnicity] LIKE 'Arabian (from Maghreb)' THEN 'Black or African American'
        WHEN [ethnicity] LIKE 'Arab%' THEN 'Asian or Asian American'
        WHEN [ethnicity] LIKE 'Pakistani%' THEN 'Asian or Asian American'
        WHEN [ethnicity] LIKE 'Russia%' THEN 'White or Caucasian'
        WHEN [ethnicity] LIKE 'Half black and half white%' THEN 'Mixed'
        WHEN [ethnicity] LIKE 'Half Asian half African%' THEN 'Mixed'
        WHEN [ethnicity] LIKE 'Other%' THEN 'Other'
        WHEN [ethnicity] LIKE '7%' THEN NULL
        ELSE [ethnicity]
        END as ethnicity
    INTO data_survery_improvementsv2
  FROM [data_industry_survey].[dbo].[data_survey_improved_v1]