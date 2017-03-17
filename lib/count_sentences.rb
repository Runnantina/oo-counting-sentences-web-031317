require 'pry'

class String

  def sentence?
    self.end_with?('.')

  end

  def question?
    self.end_with?('?')
  end

  def exclamation?
    self.end_with?('!')
  end

  def count_sentences
    # return an integer
    count = 0
    array = self.split(' ')
    array.each do |element|
      if element.sentence? || element.question? || element.exclamation?
        count += 1
      end

    end
    count
  end

end
