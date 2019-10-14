require 'pry'

class String

  def sentence?
    if self.end_with?(".")
      TRUE
    else
      FALSE
    end
  end

  def question?
 if self.end_with?("?")
      TRUE
    else
      FALSE
    end
  end

  def exclamation?
 if self.end_with?("!")
      TRUE
    else
      FALSE
    end
  end

  def count_sentences
 new_array = self.split(/[.?!]/).reject {|string| string.empty?}
   new_array.size
  end
end