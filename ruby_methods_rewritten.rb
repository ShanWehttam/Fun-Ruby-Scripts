#map
class Array
  def my_map
    element = 0
    map = []
    until element == self.size
      map << yield(self[element])
      element += 1
    end
    map
  end
end
names = ["matt","brad","james"]
p names.my_map {|*x| p x}


#reduce
class Array
  def reducer(accumulator = nil)
    element = 0
    acc = []
    until element == self.size
      if accumulator
        yield(accumulator, self[element])
      else
        accumulator = self[element]
        yield(accumulator, (self[element + 1]))
      end
      element += 1
    end 
    accumulator
  end
end

result = [1,2,3,4,5].reducer { |inj, elmnt| inj + elmnt }

=begin
