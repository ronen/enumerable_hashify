module Enumerable
  # If no block is given, returns a hash where each element in the enumrable is
  # a key whose value is the given parameter (default true).  e.g.
  #
  #     [1,2,3,4].hashify                  --> {1=>true, 2=>true, 3=>true, 4=>true}
  #     [1,2,3,4].hashify("a")             --> {1=>"a", 2=>"a", 3=>"a", 4=>"a"}
  #
  # if a block is given, returns a hash where each element in the enumerable is
  # a key whose value is the result of running the block for that element.
  # e.g.
  #
  #     [1,2,3,4].hashify{|n| "a" * n}    --> {1=>"a", 2=>"aa", 3=>"aaa", 4=>"aaaa"}
  #
  def hashify(val=true)
    h = {}
    if block_given?
      each { |item| h[item] = yield(item) }
    else
      each { |item| h[item] = val }
    end
    h
  end

end
