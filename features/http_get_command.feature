Feature: `http-get` command

  In order to use HTTP's GET method
  As an end user of htty
  I want to issue a corresponding htty command

  Scenario: issue a simple GET request using a command

    When I run "htty htty.github.com" interactively
    And I type "get"
    And I type "quit"
    Then the output should match:
      """
      200.+? OK -- \d+ headers? -- \d+-character body
      """

  Scenario: issue a simple GET request using a command abbreviation

    When I run "htty htty.github.com" interactively
    And I type "http-g"
    And I type "quit"
    Then the output should match:
      """
      200.+? OK -- \d+ headers? -- \d+-character body
      """

Scenario: issue a simple GET request using a command alias

    When I run "htty htty.github.com" interactively
    And I type "get"
    And I type "quit"
    Then the output should match:
      """
      200.+? OK -- \d+ headers? -- \d+-character body
      """

Scenario: issue a simple GET request using an abbreviated command alias

    When I run "htty htty.github.com" interactively
    And I type "g"
    And I type "quit"
    Then the output should match:
      """
      200.+? OK -- \d+ headers? -- \d+-character body
      """