Feature: Complete todos 
  In order to differentiate between things to do and things i've done
  As a user
  I want to be able to complete my todos
  
  Scenario: complete a todo
    Given I have signed in
    When I create a todo titled "Buy some milk"
    And I complete the todo "Buy some milk"
    Then "Buy some milk" should be marked completed
  
  
  

  
