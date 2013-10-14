Feature: menu cache optimization 
  In order to verify menu cache per user is workable after code change in ticket '932'
  
  Scenario Outline: Test different user's cached menu
    Given I log on as <user> and <password> in home page
    Then I should see <user> in web page
    When I get cached menu paths from database for <user>
    Then I verify each cacehd menu path is valid for <user>

  Examples:
    |   user        |  password  | 
    |   anonymouse  |  1qaz2wsx  |
    |   thomasli    |  1qaz2wsx  |
    |   brian       |  1qaz2wsx  |
    |   admin       |  1qaz2wsx  |

   
