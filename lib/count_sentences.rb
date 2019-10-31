require 'pry'

class String

  def sentence?
    if self.end_with?(".")
      true 
    else
      false 
    end
  end

  def question?
    if self.end_with?("?")
      true 
    else
      false 
    end
  end

  def exclamation?
    if self.end_with?("!")
      true 
    else
      false 
    end
  end

  def count_sentences
    new_sentences = []
    if self.include?(".")
      new_sentences = self.split(/[.!?]/)
    end
    new_sentences2 = []
    new_sentences.each do |value|
      if value != "" && value != "?"
        new_sentences2 << value
      end
    end
    new_sentences2.size
  end
end