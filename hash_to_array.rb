# (3) Write a program that collects 5 keys and 5 values from the user, and stores them in a hash.  Write a function that accepts the hash as optional parameters and prints out an array of keys and an array of values.  Call the function within your program so you know it works. (Question: Can you find online information on Ruby hash methods that will help with this function?)  Call this program hash_to_array.rb.
class NewHash
  include Enumerable
  attr_accessor :hash
  def initialize
    @hash = create_hash
  end
  
  def each(&block)
    hash.each(&block)
  end

  def create_hash
    hash = {}
    5.times {
      print "Set a key: "
      new_key = gets.chomp
      print "Set the value of #{new_key}: "
      new_value = gets.chomp
      hash[new_key] = new_value
    }
    hash
  end
  
  def print_hash
    hash_keys = []
    hash_values = []
    hash.each_pair do |key, value|
      hash_keys.push(key)
      hash_values.push(value)
    end
    puts "Keys: #{hash_keys.inspect}"
    puts "Values: #{hash_values.inspect}"
  end
end

new_hash = NewHash.new().print_hash

