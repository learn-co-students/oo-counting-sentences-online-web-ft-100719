require 'pry'

class String

  def sentence?
    self[-1] == "." ? true : false
  end

  def question?
    self[-1] == "?" ? true : false
  end

  def exclamation?
    self[-1] == "!" ? true : false
  end

  def count_sentences
    separated = self.split(/[.|?|!]/)
    selected = separated.select {|i| i != ""}
    count = selected.length
  end
end