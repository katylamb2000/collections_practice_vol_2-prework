# your code goes here
def begins_with_r (array)

  if array.all? { |tool| tool.start_with?("r") }
    true
  else
    false
end
end

def contain_a (array)
 array.select! { |str| str.include?('a') }
  array
end

def first_wa (array)
  array.each do |key, value|
    if key.to_s.start_with?('wa')
      return key
    elsif value.to_s.start_with?('wa')
      return value
    end

end

def remove_non_strings (array)
  array.delete_if { |obj| !(obj.is_a? String) }
end

def count_elements (array)
  array.group_by(&:itself).map{|k, v| k.merge(count: v.length)}

 end
 
 
def merge_data(keys, data)
  i = 0
  while i < keys.length
    data.each do |element|
      element.each do |key, value|
        if keys[i].has_value?(key)
          keys[i].merge!(value)
        end
      end
    end
  i+=1
  end
  return keys
end
 end
 
 def find_cool(cool)
  i = 0
  cool_stuff = [];
  while i < cool.length do
    cool[i].collect do | key, values |
      if values == "cool"
        cool_stuff << cool[i]
        i += 1
      cool_stuff
    end
  end
end
end
  
  def organize_schools (schools)
  
  output = {}
  schools.each do |key, location_hash|
    location_hash.each do |k, location|
      if !output.has_key?(location)
        output[location] = [key]
      elsif output.has_key?(location)
        output[location] << key
      end
    end
  end
  output
end
    