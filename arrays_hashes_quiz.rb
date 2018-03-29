# Homework

## Exercise A

### Given the following data structure:

stops = [ "Croy", "Cumbernauld", "Falkirk High", "Linlithgow", "Livingston", "Haymarket" ]

### Complete these tasks:

# 1. Add `"Edinburgh Waverley"` to the end of the array
stops.push("Edinburgh Waverley")

# 2. Add `"Glasgow Queen St"` to the start of the array
stops.insert(0,"Glasgow Queen St")
p stops
# 3. Add `"Polmont"` at the appropriate point (between `"Falkirk High"` and `"Linlithgow"`)
stops.insert(4,"Polmont")
p stops
# 4. Work out the index position of `"Linlithgow"`
linlithgow = stops.index("Linlithgow")
p linlithgow

# 5. Remove `"Livingston"` from the array using its name
stops.delete("Livingston")
p stops
#6. Delete `"Cumbernauld"` from the array by index
stops.delete_at(2)
p stops
# 7. How many stops there are in the array?
stops_in_array = stops.count
p stops_in_array
# 8. How many ways can we return `"Falkirk High"` from the array?
p stops[2]
p stops[-5]
falkirk_stop = stops.include? "Falkirk High"
p falkirk_stop
# 9. Reverse the positions of the stops in the array
p stops.reverse!
# 10. Print out all the stops using a for loop
def train_stops(stop)

  for station in stop

    end
end
p train_stops(stops)

# # # ## Exercise B

### Given the following data structure:

    users = {
      "Jonathan" => {
        :twitter => "jonnyt",
        :lottery_numbers => [6, 12, 49, 33, 45, 20],
        :home_town => "Stirling",
        :pets => [
        {
          :name => "fluffy",
          :species => "cat"
          },
          {
          :name => "fido",
          :species => "dog"
          },
          {
          :name => "spike",
          :species => "dog"
        }
      ]
      },
        "Erik" => {
        :twitter => "eriksf",
        :lottery_numbers => [18, 34, 8, 11, 24],
        :home_town => "Linlithgow",
        :pets => [
        {
        :name => "nemo",
        :species => "fish"
        },
        {
        :name => "kevin",
        :species => "fish"
        },
        {
        :name => "spike",
        :species => "dog"
      },
      {
        :name => "rupert",
       :species => "parrot"
        }
      ]
      },
      "Avril" => {
        :twitter => "bridgpally",
        :lottery_numbers => [12, 14, 33, 38, 9, 25],
        :home_town => "Dunbar",
        :pets => [
          {
            :name => "monty",
            :species => "snake"
          }
        ]
      }
      }

 ### Complete these tasks:

# 1. Get Jonathan's Twitter handle (i.e. the string `"jonnyt"`)
p users["Jonathan"][:twitter]

# 2. Get Erik's hometown
p users["Erik"][:home_town]

# 3. Get the array of Erik's lottery numbers
p users["Erik"][:lottery_numbers]

# 4. Get the type of Avril's pet Monty
monty = users["Avril"][:pets][0]
p monty[:species]

# 5. Get the smallest of Erik's lottery numbers
small_number = users["Erik"][:lottery_numbers]
p small_number.min

# # # 6. Return an array of Avril's lottery numbers that are even
even_number = users["Avril"][:lottery_numbers]
p even_number.select(&:even?)

evens = []
avrils_numbers = users["Avril"][:lottery_numbers]

for number in avrils_numbers
  evens << number if number.even?
end

 p evens
# # # 7. Erik is one lottery number short! Add the number `7` to be included in his lottery numbers
  users["Erik"][:lottery_numbers].push(7)


 # 8. Change Erik's hometown to Edinburgh
  users["Erik"][:home_town] = "Edinburgh"


 # 9. Add a pet dog to Erik called "Fluffy"
p users["Erik"][:pets].insert(0,:name => "fluffy",:species => "Dog")

# dog = {
#   :name => "Fluffy"
#   :species => "dog"
# }
#
# users["Erik"][:pets] << dog

# # # 10. Add another person to the users hash
 users["Paul"] = {}
 p users

 stuart = {
   :twitter => "stooggle",
   :lottery_numbers => [1, 2, 3, 4, 5, 6],
   :home_town => "Glasgow",
   :pets => [
    {
      :name => "c",
      :species => "cat",
    }
  ]
 }

users["Stuart"] = stuart
 p users
 # ## Exercise C
 # ### Given the following data structure:

 united_kingdom = [
      {
      name: "Scotland",
      population: 5295000,
      capital: "Edinburgh"
    },
    {
      name: "Wales",
      population: 3063000,
      capital: "Swansea"
    },
    {
      name: "England",
      population: 53010000,
      capital: "London"
    }
    ]

# ### Complete these tasks:
#
# # 1. Change the capital of Wales from `"Swansea"` to `"Cardiff"`.
 united_kingdom[1][:capital] = "Cardiff"

 p united_kingdom

 # 2. Create a Hash for Northern Ireland and add it to the `united_kingdom` array (The capital is Belfast, and the population is 1,811,000).

united_kingdom.push(name: "Northern Ireland", population: 1811000, capital: "Belfast")
 p united_kingdom
 # 3. Use a loop to print the names of all the countries in the UK.
 for name in united_kingdom
   puts "#{name[:name]}"
 end

for country in united_kingdom
  p country[:name]
end
# 4. Use a loop to find the total population of the UK.
total_population = 0
for country in united_kingdom
  total_population += country[:population]
end
p total_population
