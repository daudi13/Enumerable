module MyEnumerable
  def all?
    listeach { |item| return false unless yield item }
    true
  end

  def any?
    listeach { |item| return true if yield item }
    false
  end

  def filter
    new_list = []
    listeach { |item| new_list << item if yield item }
    new_list
  end
end
