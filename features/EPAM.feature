Feature: EPAM site
  As a Test Automation Engineer
  I want to write test for EPAM career site
  So that I can make sure if the page works properly

  Scenario Outline: <n>. Search for a job
    Given The Epam Career page is opened
    Then The page is opened
    And The search form is visible

    When Click on "Location Filter Box"
    And Select "<Country>" / "<City>"
    Then The "Location Filter Box" should contain "<City>"

    When Click on "Department Filter Box"
    When I wait 1 seconds
    And Select "<SkillType>" element
    Then The "Department Filter Box Label" should contain "Selected: 1"

    When Click on "Search Button"
    Then The "<PositionName>" position should be visible
    And The department of the position should be "<SkillType>"
    And The location of the position should be "<Country>"
    And There should be an Apply button for the `<PositionName>` position

    When Apply button of "<PositionName>" is clicked
    Then The Detailed page should be opened
    And The "Job Description" should contain "<PositionName>" text

    Examples:
      | n | Country     | City     | SkillType                              | PositionName                  |
      | 1 | Hungary     | Debrecen | Software, System, and Test Engineering | Lead Test Automation Engineer |
      | 2 | Switzerland | Zurich   | Solution Architecture                  | Data Solution Architect       |
