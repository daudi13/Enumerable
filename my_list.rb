class MyList
  includes MyEnumerable
  def list(list)
    @list = list
  end

  def listEach(&block)
    @list.each(&block)
  end
end
