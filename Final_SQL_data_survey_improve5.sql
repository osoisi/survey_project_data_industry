SELECT
        [survey_ID]
      ,[surveyed_date]
      ,[survey_time]
      ,[survey_duration]
      ,[current_role]
      ,[switched2data]
      ,[salary_usd]
      ,lower(RTRIM(CASE
            WHEN [industry] LIKE '%food%' THEN 'Food' 
            WHEN [industry] LIKE '%Manu%' THEN 'Manufacturing' 
            WHEN [industry] = 'Sensors' THEN 'Manufacturing' 
            WHEN [industry] LIKE '%Defense%' THEN 'Space and Defense' 
            WHEN [industry] = 'Clean Energy' THEN 'Sustainability' 
            WHEN [industry] LIKE '%Renewable%' THEN 'Sustainability'
            WHEN [industry] = 'Culinary' THEN 'Hospitality' 
            WHEN [industry] = 'Culture' THEN 'Hospitality' 
            WHEN [industry] = 'Food' THEN 'Hospitality' 
            WHEN [industry] LIKE '%Gover%' THEN 'Government and Planning' 
            WHEN [industry] = 'State' THEN 'Government and Planning'
            WHEN [industry] = 'Urbanism' THEN 'Government and Planning'
            WHEN [industry] LIKE '%home%' THEN NULL
            WHEN [industry] LIKE '%stud%' THEN NULL
            WHEN [industry] LIKE '%study%' THEN NULL
            WHEN [industry] LIKE '%bootcamp%' THEN NULL
            WHEN [industry] LIKE '%employ%' THEN NULL
            WHEN [industry] = 'utili' THEN 'Utilities'
            WHEN [industry] LIKE 'Data%' THEN 'Data'
            WHEN [industry] LIKE 'Demogr%' THEN 'Data'
            WHEN [industry] LIKE 'Customer%' THEN 'Customer Service'
            WHEN [industry] LIKE 'Digital Mar%' THEN 'Media, Sales and Marketing'
            WHEN [industry] = 'Direct Marketing' THEN 'Media, Sales and Marketing'
            WHEN [industry] LIKE '%commerce%' THEN 'Retail'
            WHEN [industry] LIKE 'ecom%' THEN 'Retail'
            WHEN [industry] LIKE '%FMCG%' THEN 'Retail'
            WHEN [industry] LIKE '%reta%' THEN 'Retail'
            WHEN [industry] = 'IT' THEN 'Tech and Telecoms'
            WHEN [industry] LIKE '%Tele%' THEN 'Tech and Telecoms'
            WHEN [industry] = 'Tech' THEN 'Tech and Telecoms'
            WHEN [industry] LIKE '%Research%' THEN 'Science and Research'
            WHEN [industry] LIKE '%Science%' THEN 'Science and Research'
            WHEN [industry] LIKE '%Logistics%' THEN 'Warehouse and Distribution'
            WHEN [industry] LIKE '%Supply%' THEN 'Warehouse and Distribution'
            WHEN [industry] LIKE '%wareh%' THEN 'Warehouse and Distribution'
            WHEN [industry] LIKE '%Looking%' THEN NULL
            WHEN [industry] LIKE '%Market%' THEN 'Media, Sales and Marketing'
            WHEN [industry] LIKE '%Media%' THEN 'Media, Sales and Marketing'
            WHEN [industry] LIKE '%real%' THEN 'Real Estate and Construction'
            WHEN [industry] LIKE '%construc%' THEN 'Real Estate and Construction'
            WHEN [industry] LIKE '%coworking%' THEN 'Real Estate and Construction'
            WHEN [industry] LIKE '%Medical%' THEN 'Healthcare'
            WHEN [industry] LIKE '%Bio%' THEN 'Healthcare'
            WHEN [industry] = 'Cobsukting' THEN 'Consulting' 
            WHEN [industry] LIKE 'Consulti%' THEN 'Consulting' 
            WHEN [industry] LIKE 'Professional Serv%' THEN 'Consulting' 
            WHEN [industry] LIKE 'Consumer Elec%' THEN 'Retail' 
            WHEN [industry] = 'Consumer retail' THEN 'Retail'
            WHEN [industry] = 'Wholesale' THEN 'Retail'
            WHEN [industry] LIKE '%store%' THEN 'Retail'
            WHEN [industry] LIKE '%Transport%' THEN 'Transport' 
            WHEN [industry] LIKE 'Other%' THEN 'Other' 
            WHEN [industry] LIKE 'Police%' THEN 'Law Enforcement' 
            WHEN [industry] LIKE 'Poult%' THEN 'Agriculture' 
            WHEN [industry] = 'Cons' THEN NULL 
            WHEN [industry] LIKE 'None%' THEN NULL 
            WHEN [industry] LIKE 'Not% work%' THEN NULL 
            WHEN [industry] LIKE 'Workforce%' THEN NULL
            WHEN [industry] LIKE '%Air transpo%' THEN 'Aviation' 
            WHEN [industry] LIKE 'Arrosp%' THEN 'Aviation' 
            WHEN [industry] = 'Aerospace' THEN 'Aviation'
            WHEN [industry] LIKE 'Avi%' THEN 'Aviation'
            WHEN [industry] LIKE '%Oil%' THEN 'Petroleum' 
            WHEN [industry] LIKE '%Non Profit%' THEN 'Non Profit'
            WHEN [industry] LIKE '%NGO%' THEN 'Non Profit'
            WHEN [industry] LIKE 'Nonpr%' THEN 'Non Profit'
            WHEN [industry] LIKE 'Audit%' THEN 'Audit or Accounting' 
            WHEN [industry] LIKE 'Automo%' THEN 'Automotive' 
            WHEN [industry] LIKE 'Igaming%' THEN 'Gaming' 
        ELSE [industry]
        END)) AS industry2
--        ,[pref_language]
      ,CASE 
            WHEN [pref_language] LIKE '%SQL%' THEN 'SQL'
            WHEN [pref_language] LIKE '%altery%' THEN 'Alteryx'
            WHEN [pref_language] LIKE '%do not%' THEN NULL
            WHEN [pref_language] LIKE '%dont%' THEN NULL
            WHEN [pref_language] LIKE '%learning%' THEN NULL
            WHEN [pref_language] LIKE '%role%' THEN NULL
            WHEN [pref_language] LIKE '%excel%' THEN 'Excel or VBA'
            WHEN [pref_language] LIKE '%VBA%' THEN 'Excel or VBA'
            WHEN [pref_language] = 'NA' THEN NULL
            WHEN [pref_language] LIKE '%ANY%' THEN NULL
            WHEN [pref_language] LIKE '%NONE%' THEN NULL
            WHEN [pref_language] LIKE '%other%' THEN NULL
            WHEN [pref_language] = 'Unknown' THEN NULL
            WHEN [pref_language] LIKE '%Power BI%' THEN 'Power BI or DAX'
            WHEN [pref_language] LIKE '%DAX%' THEN 'Power BI or DAX'
            WHEN [pref_language] LIKE '%STATA%' THEN 'STATA, ADO or MATA'
          ELSE [pref_language]
        END AS prog_lang_or_tool
      ,[how_happy]
      ,[work_life_balance]
      ,[enjoy_coworkers]
      ,[enjoy_management]
      ,[upward_mobility]
      ,[learning_new_things]
      ,[hard2enter_data]
      ,[important4next_role]
      ,CASE
            WHEN [important4next_role] LIKE '%Other%' THEN 'Other' ELSE [important4next_role] END AS priority4next_role
      ,[male_female]
      ,[age]
      ,[country]
      ,[education]
      ,[ethnicity]
    INTO data_survery_normalised
  FROM [data_industry_survey].[dbo].[data_survey_improvementsv4]