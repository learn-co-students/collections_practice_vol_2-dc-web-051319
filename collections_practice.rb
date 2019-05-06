def begins_with_r(arr)
  for i in arr
    unless i[0] == "r"
        return false
    else
        true
    end
  end
  true
end

def contain_a(arr)
  a_words = []
  for i in arr
    if i.include? "a"
      a_words << i
    end
  end
  a_words
end

def first_wa(arr)
  for i in arr
    if i[0..1] == "wa"
      return i
    end
  end
end

def remove_non_strings(arr)
  arr.select { |i| i.class == String}
end

def count_elements(arr) 
    counter = Hash.new(0)
    arr.each do |values|
        counter[values] += 1
    end
    count_arr = []
    counter.each do |key, count|
        count_arr << {:name => key.values.join, :count => count}
    end
    count_arr
end

def merge_data(first, second)
  merged_data = []
  first.each { |vals| merged_data << vals }
  i = 0
  second.each do |vals|
    vals.values.each do |data|
      merged_data[i].merge!(data)
      i += 1
    end
  end
  merged_data
end 

def find_cool(data)
  cool_arr = []
  for item in data
    if item[:temperature] == "cool"
      cool_arr << item
    end
  end
  cool_arr
end

def organize_schools(data)
  locations = {}
  data.collect do |schools, data| 
    locations[data[:location]] = []
  end
  locations.each do |keys, location_arr|
    data.each do |school, location| 
      if location.values.join == keys
       location_arr << school
      end
    end
  end
  locations
end
