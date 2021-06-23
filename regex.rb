# Regexp holds a regular expression, used to match a pattern against strings.
# Regexps are created using the /.../ and %r{...} literals, and by the Regex::new constructor.

# Regular expressions (regexps) are pattern which describe the contents of a string. They're used for testing whether a string
# contains a given pattern, or extracting portions of the match. 
# They are created with the  /pat/ and %r{pat} literals or the Regexp.new constructor.

# A regexp is usually delimited with forward slashes (/). For example:

# Returns the index of hay's start
puts /hay/ =~ 'haystack' #=> 0
puts /hay/ =~ 'the haystack' #=> 4

# If a string contains the pattern it is said to match. A literal string matches itself.
puts /y/.match('haystack') #=> y
puts /needle/.match('haystack') #=> nil
puts /needle/.match('hay-needle-stack') #=> needle

# The =~ operator can be used instead of the match method.
puts "=~: #{/corn/ =~ 'thecorndad'}"

# =~ is one side is a pattern and the other is a string it will return the index or nil if there is no match.
# ( ) [ ] { } . ? + * \ chars have special meaning in a pattern using a backslash.

puts /1 \+ 2 = 3\?/.match('Does 1 + 2 = 3?')

# String literals can run ruby code in the pattern.
name = 'stu'
puts /#{name}/.match('beefstu')

# A character class is delimited with [] and any chars within can match at that point in the pattern.
puts /b[aeiou]b/ =~ 'abib'
puts /b[aeiou]b/ =~ 'Mr. bob'
puts /b[aeiou]b/.match('pop the bubble')
# All match.

# hyphens "-" can be used to denotes an inclusive range.
puts /b[0-9]b/.match('His name was b0b')
# multiple ranges can be used.
puts /[a-cx-z]/.match('rtqob')
# it doesn't matter which order chars or ranges are in a character class
puts /[x-za-c]/.match('rtqzoj')

# Use a carat "^" to inverse a range
puts /[^a-g]oose/.match('goose choose')

# && can be used to check two ranges
puts /b[a-c&&[^x-z]]e/.match('hr is bae')

# . is any character except a newline.
puts /b.b/.match('b&b')

# m is for multiline mode
puts /b.b/m.match('pop \n b!b')

# /\w/ a word character?
puts /.\w./.match('bob')

# /\W/ or /^\w/ a non word character?
puts /[a-z][^\w\s][a-zA-Z]/.match('Hello b😌b! this string could be an entire novel')

