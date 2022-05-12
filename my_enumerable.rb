module MyEnumerable
  def all?
    each { |item| return false unless yield item }
    true
  end

  def any?
    each { |item| return true if yield item }
    false
  end

  def filter
    new_list = []
    each { |item| new_list << item if yield item }
    new_list
  end
end
