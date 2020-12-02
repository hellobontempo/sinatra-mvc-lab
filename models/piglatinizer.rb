require "pry"
class PigLatinizer
    attr_reader :words
    
    def initialize
        @words = words
    end

    def piglatinize(word)
        @word = word
        @letter_array = @word.chars
        if @word.start_with?(/[aeiou]/)
            "#{word}way"
        else 
            @consonants = []
            @letter_array.each(1) do |l|
                until l == "a" || "e" || "i" || "o" || "u"
                  @consonants << l
                end
            @new = @letter_array - @consonants 
            "#{@new.join}#{@consonants.join}ay"
            end
        end
        # if 
        # else
        #     consonants = []
        #     characters = word.chars #["p", "o", "r", "k"]
        #     consonants << characters[0] #consonants = ["p"]
        #     characters.each(1) do |l| 
        #         if l != "a" || "e" || "i" || "o" || "u"
        #         consonants << characters[l]
        #         else
        #         characters.delete(consonants[0])
        #         "#{characters}#{consonants[0]}way"
        #         #binding.pry
        #         end
        #     end

        # end

    end

end