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
    split_sentences = self.split(/[.!?]/)
    split_sentences.each_with_index do |sentence, index|
      if sentence == ""
        split_sentences.delete_at(index)
      end
    end
    split_sentences.count
  end
end