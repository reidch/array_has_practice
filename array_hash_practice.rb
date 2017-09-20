lines = ['St Enoch', 'Buchanan St', 'Cowcaddens', 'St Georges X', 'Kelvinbridge', 'Hillhead', 'Kelvinhall', 'Partick', 'Govan', 'Ibrox', 'Cessnock', 'Kinning Park', 'Shields Road']

# number of stops
puts lines.length()
#OR
puts lines.count()

# return Cowcaddens
puts lines[2]

# different ways of returning Shields Road
puts lines[12]
puts lines.last()
puts lines.drop(12)
puts lines.at(12)
puts lines[-1]
puts lines.bsearch {|x| x >= "Shields Road"}
puts lines.fetch(12)
puts lines.fetch(-1)
puts lines.sort[10]
puts lines.reverse[0]
puts lines.slice!(12)
puts lines.values_at(12)

# index position of Partick
puts lines.index("Partick")
#OR
puts lines.rindex("Partick")

# add Bridge St to start of array
puts lines.unshift("Bridge Street")

# add West St to end of array
puts lines.push("West Street")
#OR
puts lines << "West Street"

# remove Kelvinbridge by name
puts lines.delete("Kelvinbridge")

# delete Cessnock by index
puts lines.delete_at(10)

# reverse positions of stops
puts lines.reverse()

# print stops using a for loop
for stop in lines
  print stop + " "
end

# -------------------------------------
my_hash = {0 => "Zero", 1 => "One", :two => "Two", "two" => 2}

# return the string "One"
puts my_hash[1]

# return the string "Two"
puts my_hash[:two]

# return the number 2
puts my_hash["two"]

# add {3 => "Three"} to the hash
puts my_hash[3] = "Three"

# add {:four => 4} to the hash
puts my_hash[:four] = 4

# -------------------------------------
users = {
  "Jonathan" => {
    :twitter => "jonnyt",
    :favourite_numbers => [12, 42, 75, 12, 5],
    :home_town => "Stirling",
    :pets => {
      "fluffy" => :cat,
      "fido" => :dog,
      "spike" => :dog
    }
  },
  "Erik" => {
    :twitter => "eriksf",
    :favourite_numbers => [8, 12, 24],
    :home_town => "Linithgow",
    :pets => {
      "nemo" => :fish,
      "kevin" => :fish,
      "spike" => :dog,
      "rupert" => :parrot
    }
  },
  "Avril" => {
    :twitter => "bridgpally",
    :favourite_numbers => [12, 14, 85, 88],
    :home_town => "Dunbar",
    :pets => {
      "colin" => :snake
    }
  },
}

# return J's twitter handle
puts users["Jonathan"][:twitter]

# return E's hometown
puts users["Erik"][:home_town]

# return array of E's fave numbers
print users["Erik"][:favourite_numbers].to_a

# return type of A's pet Colin
puts users["Avril"][:pets]["colin"]

# return smallest of E's fave numbers
puts users["Erik"][:favourite_numbers].min

# add 7 to E's fave numbers
print users["Erik"][:favourite_numbers].unshift(7)

# change E's hometown to Edinburgh
puts users["Erik"][:home_town] = "Edinburgh"

# add pet dog to E called Fluffy
puts users["Erik"][:pets]["fluffy"] = :dog

# adding myself to users hash
puts users["Caroline"] = {
  :twitter => "cazzles",
  :favourite_numbers => [7, 22, 37, 99],
  :home_town => "Glasgow",
  :pets => {
    "dinky" => :budgie
  }
}
