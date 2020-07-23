require 'pry'
def begins_with_r(array) 
  count = 0 
  len = array.size 
  array.each do |string|
    if(string[0]=="r")
      count+=1
  end
end
  if count == len 
    return true 
  else 
    return false 
end
end

def contain_a(array)
  new_array = []
  array.each do |element|
   
    if element.include?("a")
      new_array << element 
    end 
  end 
  new_array
end

def first_wa(array)
  array.each do |element|
    if element[0,2] == "wa"
      return element
    end 
  end
end

def remove_non_strings(array)
  strings = [] 
  array.each do |element|
    if element.class == String 
      strings << element 
    end
  end 
  return strings 
end 

def count_elements(array)
 array_hash = []
  hash = {}
  uniq_array = array.uniq 
  uniq_array.each do |element|
   
    array_hash << {:count => array.count(element), :name => element[:name]}
  
  end 
  return array_hash 
end




def merge_data(keys, data)

hash_keys = {}
hash_data = {}
person_hash = {}
array_hashes = []
idx = 0

while (idx < 2)
    hash_keys = keys[idx]
  name_key = hash_keys[:first_name]
hash_data = data[0][name_key]
person_hash = hash_data.merge(hash_keys)
array_hashes << person_hash
idx += 1
end
return array_hashes
end

=begin
 let(:cool) {
    [
            {
                   :name => "ashley",
            :temperature => "sort of cool"
        },
            {
                   :name => "blake",
            :temperature => "cool"
        }
    ]
  }
  while(n<i)

array[k][:location]

array.each do |k, v|
  hash_temp[k][:location]
  
  
end 
keys_array = array.keys 
n = keys_array.size 
keys_array.each do |school|
  temp_hash[:school] = 
  
=end 

def find_cool(array) 
  
  idx = 0 
  array_hash = []
  while idx < array.size 
  
  array.each do |key|
    
  if(key[:temperature] == "cool")
    array_hash << key 
  end 
  idx+=1
end 
 return array_hash 
end 
end 

def organize_schools(array)
hash = {}
keys_array = []
cities_array = []
city_schools = [] 

i = 0 
n = 0 
n = keys_array.size

keys_array = array.keys 

keys_array.each do |school|
  cities_array.push(array[school][:location])
end 

cities_array = cities_array.uniq! 
cities_array.each do |city|
  array.each do |k, v|
    if array[k][:location] == city 
      city_schools.push(k)
    end 
  end 
  hash[city] = city_schools
  city_schools = []
  end 
  return hash
end