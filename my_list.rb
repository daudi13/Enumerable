class MyList
  includes MyEnumerable
  def list(list)
    @list = list
  end

  def listeach(&block)
    @list.each(&block)
  end
end
