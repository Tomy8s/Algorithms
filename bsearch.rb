class Bsearch
  attr_reader :target
  def initialize(target, arr1, arr2)
    @target = target
    @arr = ([arr1, arr2].min..[arr1, arr2].max).to_a
    check
  end

  def check
    if @target > @arr.last
      raise ArgumentError, "Target (#{@target}) must be smaller than end of array (#{@arr[-1]})"
    elsif @target < @arr.first
      raise ArgumentError, "Target (#{@target}) must be greater than beginning of array (#{@arr[0]})"
    end
  end
  
  def search
    min = @arr[0]
    max = @arr[-1]
    
    i = 0
    n = @arr[(@arr.index(max) + @arr.index(min)) / 2]

    until @target == n
      n = @arr[(@arr.index(max) + @arr.index(min)) / 2]
      if @target > n
        i += 1
        puts "Bisector #{n} smaller than #{@target}!"
        min = @arr[@arr.index(n)]
      elsif @target < n
        i += 1
        puts "Bisector #{n} bigger than #{@target}!"
        max = @arr[@arr.index(n)]
      else
        puts "Found #{n} at index #{arr.index(n)} after #{i} splits."
      end
    end
  end
end
