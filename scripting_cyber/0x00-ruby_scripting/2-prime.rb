#!/usr/bin/env ruby
require 'prime'

# prime - Checks if a number is prime using the Prime class
# @number: Integer to be checked
# Returns: true if number is prime, false otherwise
def prime(number)
  Prime.prime?(number)
end
