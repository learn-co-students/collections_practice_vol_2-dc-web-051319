# your code goes here
def begins_with_r(arr)
  bool = true
  arr.each do |val|
    if !val.start_with?("r")
      bool = false
    end
  end
  bool
end

def contain_a(arr)
  arr.keep_if do |val|
    val.include? "a"
  end
end

def first_wa(arr)
  arr.each do |val|
    if val.to_s.start_with?("wa")
      return val
    end
  end
end

def remove_non_strings(arr)
  arr.keep_if do |val|
    val == val.to_s
  end
end

def count_elements(arr)
  count = []
  counter = []
  
  arr.each_with_index do |val, index|
    if count.include?(val)
      counter[count.index(val)] += 1
    else
      counter.push(1)
      count.push(val)
    end
  end
  counter.each_with_index do |num, index|
    count[index][:count] = num
  end
  count
end

def merge_data(keys, data)
  arr = []
  new_hash = {}
  
  data.each do |obj|
    obj.each do |name, attributes|
      arr.push(attributes)  
    end
  end
  keys.each_with_index do |obj, index|
    arr[index] = arr[index].merge(obj)
  end
  arr
end

def find_cool(hash)
  arr = []
  hash.each do |obj|
    if obj[:temperature] == "cool"
      arr.push(obj)
    end
  end
  arr
end

def organize_schools(hash)
  organized_hash = {}
  
  hash.each do |key, value|
    if organized_hash.has_key?(value[:location].to_s)
      organized_hash[value[:location].to_s].push(key)
    else
      organized_hash[value[:location].to_s] = [key]
    end
  end
  organized_hash
end


