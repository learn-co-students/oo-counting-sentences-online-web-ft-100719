require 'pry'

class String

  def sentence?
    if self.end_with?(".") 
       true  
    else false
    end
  end

  def question?
    self.end_with?("?") ? true : false
  end

  def exclamation?
    self.end_with?("!") ? true : false
  end
  #redo this 
  def count_sentences
   self.split(/[.!?]/).reject {|x| x.empty?}.size
  end
end