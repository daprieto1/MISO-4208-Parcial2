Feature: Create Car

  Scenario: Create Car first time
    When I press the "CREATE A CAR" button
      And I enter text "car 0" into field with id "edt_name"
      And I enter text "0" into field with id "edt_initial_mileage"
      And I press "menu_save"  
    Then I see the text "car 0"  

  Scenario Outline: Create Car second time
    When I swipe left
      And I touch the "Settings" text 
      And I touch the "Cars" text 
      And I press "menu_add_car"
      And I enter text <carname> into field with id "edt_name"
      And I enter text "0" into field with id "edt_initial_mileage"
      And I press "menu_save"
    Then I see the text <carname>
    
    Examples:
      | carname | 
      | "car 1" |

