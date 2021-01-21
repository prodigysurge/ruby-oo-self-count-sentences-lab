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
    sentence_string = self.split(/[.?!]/)
    sentence_string.delete_if do |sentence|
      sentence.empty?
    end
    sentence_string.count
  end
end