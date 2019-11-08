require 'pry'

class String

  def sentence?
    if self.end_with? (".")
      return true
    else
      return false
    end
  end

  def question?
    if self.end_with?("?")
      return true
    else
      return false
    end
  end

  def exclamation?
    if self.end_with?("!")
      return true
    else
      return false
    end
  end

  def count_sentences
    sentence_array=self.split(".")
    sentence_array.each do |word|
      if word.include?("!")
        word.split("!").each do |str|
          if str !=""
            sentence_array<<str
          end
        end
      end
    end
    sentence_array.length
  end
end
