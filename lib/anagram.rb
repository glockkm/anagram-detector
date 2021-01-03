# anagram = a word, phrase, or sentence formed from another by rearranging its letters
# exmp: top and pot and opt

class Anagram
    attr_accessor :word
    def initialize(word)
        @word = word
    end

    def match(array)
        array.select do |element|
            (@word.split("").sort) == (element.split("").sort)
        end
    end
end
