Feature: About

    Scenario: Create Car first time
        When I press the "CREATE A CAR" button
            And I enter text "car 0" into field with id "edt_name"
            And I enter text "0" into field with id "edt_initial_mileage"
            And I press "menu_save"  
        Then I see the text "car 0" 

    Scenario: About
        When I swipe left
            And I touch the "Settings" text 
            And I touch the "About Car Report" text                
            And I press the "LICENSES" button
        Then I press the "OK" button
    

