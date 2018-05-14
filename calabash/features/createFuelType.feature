Feature: Create Fuel Type

    Scenario: Create Car first time
        When I press the "CREATE A CAR" button
            And I enter text "car 0" into field with id "edt_name"
            And I enter text "0" into field with id "edt_initial_mileage"
            And I press "menu_save"  
        Then I see the text "car 0" 

    Scenario Outline: Create Fuel Type
        When I swipe left
            And I touch the "Settings" text 
            And I touch the "Fuel Types" text 
            And I press "menu_add_fuel_type"
            And I enter text <fuelName> into field with id "edt_name"
            And I enter text <fuelCategory> into field with id "edt_category"      
            And I press the "OK" button
        Then I see the text <fuelName>
            And I see the text <fuelCategory>
    
        Examples:
            | fuelName | fuelCategory |      
            | "Terpel" | "Gas"        |

