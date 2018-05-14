Feature: backup and export

    Scenario: Create Car first time
        When I press the "CREATE A CAR" button
            And I enter text "car 0" into field with id "edt_name"
            And I enter text "0" into field with id "edt_initial_mileage"
            And I press "menu_save"  
        Then I see the text "car 0" 

    Scenario: backup and restore
        When I swipe left
            And I touch the "Settings" text 
            And I touch the "Backup & Export" text                
            And I touch the "Backup the current data to SD card." text
            And I press the "OVERWRITE" button
        Then I see the text "Backup to file carreport.backup completed successfully." 
            And I touch the "Restore data from file carreport.backup on SD card." text
            And I press the "RESTORE" button
            And I see the text "Restore completed successfully" 

    Scenario: export and import
        When I swipe left
            And I touch the "Settings" text 
            And I touch the "Backup & Export" text                
            And I touch the "Export CSV" text
            And I press the "OVERWRITE" button
        Then I see the text "Export to SD card completed successfully." 
            And I scroll down 
            And I touch the "Import CSV" text
            And I press the "IMPORT" button
            And I see the text "Import completed successfully" 
    

