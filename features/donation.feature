Feature: Donation

  As a generous benefactor,
  So that I can contribute to the cause,
  I want to be able to access a donation page.

Scenario: Access donation page
  
  Given I am on the homepage
  Then I should see "Donate"
  When I follow "Donate"
  Then I should be on the donation page
    
Scenario: See Paypal

  Given I am on the donation page
  Then I should see "Pay with Paypal" button
