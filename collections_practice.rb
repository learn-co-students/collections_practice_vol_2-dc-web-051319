require 'pry'

def begins_with_r(array)
    array.select{ |ele| ele.to_str.downcase[0] != 'r' } == []
end

def contain_a(array)
    array.select{ |ele| ele.to_str.downcase.include? 'a' }
end

def first_wa(array)
    array.find{ |ele| ele.to_s.downcase.include? 'wa' }
end

def remove_non_strings(array)
    array.select{ |ele| ele.is_a? String }
end

def count_elements(array)
    array.each_with_object({}) do |ele, hash|
        if hash[ele[:name]]
            hash[ele[:name]] += 1
        else 
            hash[ele[:name]] = 1
        end
    end.map{ |name, count| {name: name, count: count}}
end

def merge_data(keys, data)
        
end

def find_cool(array)
    array.each_with_object([]) do |hash, a|
        if hash[:temperature] == "cool" 
            a << hash
        end
    end
end

def organize_schools
end
