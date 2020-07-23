require 'pry'

def begins_with_r(tools)
  result = true
  tools.each do |tool|
    if tool[0] != "r"
      result = false 
    end
  end
  result
end

def contain_a(elements)
  storage = []
  elements.each do |element|
    if element.include? "a" 
      storage.push(element)
    end
  end
  storage
end

def first_wa(words)
  words.each do |word|
    if word.to_s.start_with? "wa"
      return word
    end
  end
end

def remove_non_strings(array)
  storage = []
  array.each do |element|
    if element.class == String  
      storage.push(element)
    end 
  end
  storage
end

def count_elements(array)

  array.each do |key|
    key[:count] = 0
    element = key[:name]
    
    array.each do |hash|
      if hash[:name] == element
        key[:count] += 1
      end
    end
  end.uniq
end

def merge_data(keys, data)
 
  data[0].map do |name, hash|
    final_hash = {}
    keys.each do |value|
      if value[:first_name] == name
        final_hash = hash.merge(value)
      end
    end  
    final_hash
  end
end

def find_cool(array)
  cool_person = []
  array.each do |element|
    if element[:temperature] == "cool"
      cool_person.push(element)
      #binding.pry
    end
  end
  cool_person
end


def organize_schools(schools)
  organized_schools = {}
  schools.each do |school, city|
    location = city[:location]
      
    if organized_schools[location]
      organized_schools[location] << school  
    #binding.pry
    else
      organized_schools[location] = []
      organized_schools[location] << school
    end
  end
  organized_schools
end

#RECEIVING:
#{"flatiron school bk"=>{:location=>"NYC"},
# "flatiron school"=>{:location=>"NYC"},
# "dev boot camp"=>{:location=>"SF"},
# "dev boot camp chicago"=>{:location=>"Chicago"},
# "general assembly"=>{:location=>"NYC"},
# "Hack Reactor"=>{:location=>"SF"}}

#EXPECTS:
#{"Chicago"=>["dev boot camp chicago"], "NYC"=>["flatiron school bk", "flatiron school", "general assembly"], "SF"=>["dev boot camp", "Hack Reactor"]}
