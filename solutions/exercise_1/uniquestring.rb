class UniqueString
  attr_accessor :word

  def initialize(word)
    @word = word
  end

  def unique_characters
    a = []
    word.chars.each do |char|
      a << char unless a.include?(char)
    end
     a
  end

  def unique_string?
    unique_characters.join == word 
  end
end
