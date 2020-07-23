def begins_with_r(array)
  array.each do |word|
    if word[0] != "r"
      return false
    end
  end
  true
end


def contain_a(array)
  a_words = []
  array.each do |word|
    if word.include?("a")
      a_words << word
    end
  end
  return a_words
end


def first_wa(array)
  array.find do |word|
    word.match("wa")
  end
end

def remove_non_strings(array)
  array.delete_if do |obj|
    !(obj.is_a? String)
  end
  array
end

def count_elements(array)
#  counts = Hash.new 0
#  array.each do |word|
#    counts[word] += 1
#  end
#  counts
#end
array.uniq.each {|i| count = 0
  array.each {|i2| if i2 == i then count += 1 end}
      i[:count] = count}
end


def merge_data(keys, data)
  keys.each do |name_hash|
    data.each do |hash|
      name_hash.merge!(hash[name_hash[:first_name]])
    end
  end
end

def find_cool(array)
  array.select do |entry|
    entry if entry.has_value?("cool")
  end
end

def organize_schools(schools)
  locations = {}
    schools.each do |school, location_hash|
      location_hash.each do |symbol, location|
        if locations[location] == nil
          locations[location] = [school]
        else
          locations[location] << school
        end
      end
    end
    locations
end
