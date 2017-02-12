class Bsearch
  attr_reader :target
  def initialize(target, set_start, set_end)
    @target = target
    @arr = (set_start..set_end).to_a
    check
  end

  def check
    if @target > @arr.last or @target < @arr.first
      raise ArgumentError, "Target (#{@target}) must be smaller than end of array (#{@arr[-1]})"
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
