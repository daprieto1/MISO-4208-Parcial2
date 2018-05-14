Feature: Create Reminder

    Scenario: Create Car first time
        When I press the "CREATE A CAR" button
            And I enter text "car 0" into field with id "edt_name"
            And I enter text "0" into field with id "edt_initial_mileage"
            And I press "menu_save"  
        Then I see the text "car 0" 

    Scenario Outline: Create Reminder
        When I swipe left
            And I touch the "Settings" text 
            And I touch the "Reminders" text 
            And I press "menu_add_reminder"
            And I enter text <reminderName> into field with id "edt_title"
            And I touch the "After distance or time, whichever comes first" text
        Then I see the text "After distance or time, whichever comes first"
            And I see the text "After distance"
            And I see the text "After time"
            And I touch the "After distance or time, whichever comes first" text
        When I enter text <distance> into field with id "edt_after_distance"      
            And I enter text <time> into field with id "edt_after_time"     
            And I scroll down 
            And I touch the "Day(s)" text
        Then I see the text "Day(s)"
            And I see the text "Year(s)"
            And I see the text "Month(s)"
            And I touch the "Day(s)" text
        When I enter text <mileage> into field with id "edt_start_mileage"                  
            And I press "menu_save"  
        Then I see the text <reminderName>
            And I see the text "car 0"
    
        Examples:
            | reminderName  | distance | time   | mileage   |  
            | "put gas"     | "30"     | "1"    | "1"       |

