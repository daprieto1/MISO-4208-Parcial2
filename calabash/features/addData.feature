Feature: Add Data

    Scenario: Create Car first time
        When I press the "CREATE A CAR" button
            And I enter text "car 0" into field with id "edt_name"
            And I enter text "0" into field with id "edt_initial_mileage"
            And I press "menu_save"  
        Then I see the text "car 0" 

    Scenario Outline: Add Refueling
        When I click on screen 86% from the left and 91% from the top            
            And I touch the "Refueling" text 
            And I enter text <mileage> into field with id "edt_mileage"
            And I enter text <volume> into field with id "edt_volume"
            And I enter text <price> into field with id "edt_price"
            And I scroll down 
            And I press "edt_time"
            And I press the "OK" button
            And I press "edt_date"
            And I press the "OK" button
            And I press "menu_save"  
        
        Examples:
            |mileage|volume|price|
            |"10"|"20"|"30"|
            |"15"|"10"|"31"|
    
    Scenario Outline: Add Other expenditure
        When I click on screen 86% from the left and 91% from the top            
            And I touch the "Other expenditure" text 
            And I enter text <title> into field with id "edt_title"
            And I enter text <mileage> into field with id "edt_mileage"            
            And I enter text <price> into field with id "edt_price"
            And I scroll down 
            And I touch the "Once" text 
        Then I see the text "Once"
            And I see the text "Repeat every day"
            And I see the text "Repeat every month"
            And I see the text "Repeat every quarter"
            And I see the text "Repeat every year"
            And I touch the "Once" text 
            And I press "edt_time"
            And I press the "OK" button
            And I press "edt_date"
            And I press the "OK" button
            And I press "menu_save"  
        
        Examples:
            |mileage|title|price|
            |"10"|"t1"|"30"|
            |"15"|"t2"|"31"|
    
    Scenario Outline: Add Other income
        When I click on screen 86% from the left and 91% from the top            
            And I touch the "Other income" text 
            And I enter text <title> into field with id "edt_title"
            And I enter text <mileage> into field with id "edt_mileage"            
            And I enter text <price> into field with id "edt_price"
            And I scroll down 
            And I touch the "Once" text 
        Then I see the text "Once"
            And I see the text "Repeat every day"
            And I see the text "Repeat every month"
            And I see the text "Repeat every quarter"
            And I see the text "Repeat every year"
            And I touch the "Once" text 
            And I press "edt_time"
            And I press the "OK" button
            And I press "edt_date"
            And I press the "OK" button
            And I press "menu_save"  
        
        Examples:
            |mileage|title|price|
            |"10"|"t1"|"30"|
            |"15"|"t2"|"31"|
    
    Scenario: See data
        When I swipe left
            And I touch the "car 0" text 
            And I touch the "OTHER EXPENDITURES" text 
            And I touch the "OTHER INCOME" text 
            And I touch the "REFUELINGS" text 
    

