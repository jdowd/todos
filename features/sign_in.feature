Feature: Sign in to the applicatoin
  In order to manage todos
  As a guest
  I should be able to sign in 
  
  Scenario: Sign in
    When I sign in as "person@example.com"
    Then I should see that I am signed in as "person@example.com"