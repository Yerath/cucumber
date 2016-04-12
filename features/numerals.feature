Feature: Numerals should be converted. 

Scenario: Display number 4 in written form
Given the input "4"
When the converter is run
Then the output should be "four"