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

