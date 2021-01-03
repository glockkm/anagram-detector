# anagram = a word, phrase, or sentence formed from another by rearranging its letters
# exmp: top and pot and opt

class Anagram
    attr_accessor :word
    
    def initialize(word)
        @word = word
    end

    def match(array)
        array.select do |element| # .select = returns a new array containing all elements of array for which the given block returns a true value
            (@word.split("").sort) == (element.split("").sort) # .sort uses quicksort algorithm
        end
    end
end

# returns all matches in an array. If no matches exist, returns an empty array.

# compares each word of that array to the word that the Anagram class is initialized with

# to determine if they are anagrams, determine if they are composed of the same letters

# can split a word into an array of letters using word.split("")

# can compare two arrays using the ==

# two arrays are equal if they contain the same elements, in the same order

# can .sort an array of elements