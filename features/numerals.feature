Feature: Numerals should be converted to written form. 

Scenario: Display number 4 in written form ("vier").
Given the input "4"
When the converter is run
Then the output should be "vier"
