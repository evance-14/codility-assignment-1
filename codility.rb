def solution(a, b, c)
  #initialize the cost to keep track of all costs
  cost = 0
#iterating over a and for each fruit name in a execute code in block
#fruit_name is a temporary variable that holds the current fruit name in each iteration.
  a.each do |fruit_name|
   #find index of current fruit name in a
    index = a.index(fruit_name)
    #Gets  price of the fruit from the array b use previous index
    #% handle the case where the index is greater than the length of the b
    price = b[index % b.length]
    #Gets the discount of the fruit from the hash c
    #return 0 if fruitname absent in c
    discount = c[fruit_name] || 0
    #Add the cost of the fruit to the total cost
    cost += price * (100 - discount).to_f / 100
  end
  #use round method to round  value of cost to the nearest integer.
  cost.round
end

a = ["apple", "orange", "banana", "apple", "banana"]
b = [50, 40, 30]
c = { "apple" => 10, "orange" => 20, "banana" => 5 }
puts solution(a, b, c)
