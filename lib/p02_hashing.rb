class Integer
  # Integer#hash already implemented for you
end

class Array
  def hash
    sum = 0
    self.each_with_index do |ele, idx|
      pop = ele.ord + idx
      sum += pop.hash
    end
    sum
  end
end

class String
  
  def hash
    chars =self.split("")
    sum = 0
    chars.each_with_index do |ele, idx|
      pop = ele.ord + idx
      sum += pop.hash
    end
    sum
  end
end

class Hash
  # This returns 0 because rspec will break if it returns nil
  # Make sure to implement an actual Hash#hash method
  def hash
    temp_str="#{self.sort}"
    temp_str.hash
  end
end
