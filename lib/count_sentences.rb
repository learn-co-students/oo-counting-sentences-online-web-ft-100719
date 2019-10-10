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
    # self.split(/[.?!]+/).length is the simpler method definition with regex
    array = self.split(".")
    array = array.map {|sentences| sentences.split("?")}.flatten
    array = array.map{|sentences| sentences.split("!")}.flatten
    array = array.reject{|sentences| sentences == ""}
    array.length
  end
end
