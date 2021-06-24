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

# The following metacharacter are short had for character classes

# . is any character except a newline.
puts /b.b/.match('b&b')

# m is for multiline mode
puts /b.b/m.match('pop \n b!b')

# /\w/ a word (alphanumeric) character?
puts /.\w./.match('bob')

# /\W/ or /^\w/ a non word character? Emojis and stuff.
puts /[a-z][^\w\s][a-zA-Z]/.match('Hello b😌b! this string could be an entire novel')

# /\d/ matches any digit [0-9]
puts /\d/.match('h3llo world') 

# /\D/ matches any non digit [^0-9]
puts /\D/.match('1234S6789')

# /\h/ matches any hexdigit character [0-9a-fA-F]
puts /\h/.match('xzyFXZY')

# /\H/ matches any non-hexdigit character [^0-9a-fA-F]
puts /\H/.match('123y123')

# /\s/ matches any whitespace character [ \t\r\n\f\v]
puts /.\s./.match('pool lobes')

# /\S/ matches any non-whitespace character [^ \t\r\n\f\v]
puts /.\S/.match('   fo  ') #=> " f"

# POSIX bracket expressions 
# Similar to character classes only they encompass non ASCII characters/

# [[:alnum:]] any alphanumeric char
puts /[[:alnum:]]/.match('😌😌😌o😌😌😌') #=> 'o'

# [[:alpha:]] matches any alphabetical character
puts /[[:alpha:]]/.match('1234S4321') #=> 'S'

# [[:blank:]] any space or tab
puts /.[[:blank:]]./.match('pop pop') #=> "p p"

# [[:cntrl:]] matches any control character? pass.

# [[:digit:]] matches any digit
puts /[[:digit:]]/.match('abcd3fG') #=> '3'

# [[:graph:]] any non space character
puts /[[:graph:]]/.match('   H   ') #=> 'H'

# [[:upper:]] any uppercase alphabetical character
puts /[[:upper:]]/.match('abcdEfgh') #=> 'E'

# [[:lower:]] any lower case character
puts /[[:lower:]]/.match('ABCDeFG') #=> 'e'

# [[:print:]] like [[:graph:]] only includes space. pass

# [[:punct:]] looks for punctuation.
puts /[[:punct:]]/.match('peel.apple') #=> '.'

# [[:space:]] any white space tab or newline.
puts /.[[:space:]]./.match('hat tan') #=> 't t'

# [[:xdigit:]] any hexcode character [0-9a-fA-F]
puts /[[:xdigit:]]/.match('timatom') #=> 'a'

# Repetition

# Zero or more times
puts /ba*b/.match('bb')
puts /ba*b/.match('bab')
puts /ba*b/.match('baab') #=> all match