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
    counter = 0
    track = ["!", "?", "."]
    counter += 1 if track.include?(self[-1])
    self.each_char.with_index {|char, i| 
      counter += 1 if track.include?(char) && self[i+1] == " " 
    }
    counter
  end
end