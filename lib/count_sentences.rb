require 'pry'

class String

  def sentence?
    self.end_with?(".")
  end

  def question?
    self.end_with?("?")
  end

  def exclamation?
    self.end_with?("!")
  end

  def count_sentences
    array = self.split(/[.?!]/)
    count = 0
    
    array.each do |sentence|
      puts sentence
      if(sentence =="")
        array.delete_at(count)
      end
      count += 1
    end
    array.count
  end
end