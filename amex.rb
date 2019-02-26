
puts "\n"
puts "Q1"
students = [
  {
      first_name: 'Abdulmohsin',
      last_name: 'Alsharhan'
  },
  {
      first_name: 'Alya',
      last_name: 'Alrashidi',
  },
  {
      first_name: 'Nahed',
      last_name: 'Hawsawi',
  }
]

upper_case_full_names = students.map do |student|
    full_name = "#{student[:first_name]} #{student[:last_name]}"
    full_name.upcase
end

puts upper_case_full_names

puts "\n"
puts "Q2"
users = [
  {
      name: 'Salem',
      orders: [
          {
              description: 'a bike'
          }
      ]
  },
  {
      name: 'Abdullah',
      orders: [
          {
              description: 'bees'
          },
          {
              description: 'fishing rod'
          }
      ]
  },
  {
      name: 'Rawan',
      orders: [
          {
              description: 'a MacBook'
          },
          {
              description: 'The West Wing DVDs'
          },
          {
              description: 'headphones'
          },
          {
              description: 'a kitten'
          }
      ]
  }
]

first_order_for_each_user = users.map do |user|
    first_order = {:description => user[:orders][0]}
end
puts first_order_for_each_user

puts "\n"
puts "Q3"
people = [
  {
      name: 'Sara',
      transactions: [
          {
              type: 'COFFEE',
              amount: 7.43
          },
          {
              type: 'TACOS',
              amount: 14.65
          },
          {
              type: 'COFFEE',
              amount: 4.43
          }
      ]
  },
  {
      name: 'Ahmad',
      transactions: [
          {
              type: 'BIKES',
              amount: 800.00
          },
          {
              type: 'TACOS',
              amount: 14.65
          },
          {
              type: 'COFFEE',
              amount: 4.43
          }
      ]
  },
  {
      name: 'Hala',
      transactions: [
          {
              type: 'COFFEE',
              amount: 7.43
          },
          {
              type: 'COFFEE',
              amount: 100.00
          },
          {
              type: 'COFFEE',
              amount: 4.43
          }
      ]
  }
]

coffee_average_per_person = people.map do |person|
    num_of_coffe = 0
    amount = 0
    transactions_arr = person[:transactions]
    transactions_arr.each do |i|
       if i[:type] == 'COFFEE' 
        num_of_coffe += 1
        amount += i[:amount]
       end
    end
average = {:name => person[:name], :coffee_average => amount/num_of_coffe  }
end

puts coffee_average_per_person

puts "\n"
puts "Q4"
stores = [
  {
      store_name: 'Jarir',
      products: [
          {
              description: 'Titanium',
              price: 9384.33
          },
          {
              description: 'Gold',
              price: 345.54
          }
      ]
  },
  {
      store_name: 'Tamimi',
      products: [
          {
              description: 'Silver',
              price: 654.44
          },
          {
              description: 'Ruby',
              price: 323.43
          }
      ]
  },
  {
      store_name: 'Souq',
      products: [
          {
              description: 'Opal',
              price: 345.43
          },
          {
              description: 'Sapphire',
              price: 899.33
          }
      ]
  }
]

most_expensive_products_by_store = stores.map do |store|

prices = store[:products].map do |i|
i[:price]
end
product_index = prices.index(prices.max)
price = prices.max
res = {:store_name=> store[:store_name], :most_expensive_product=>{:description=> store[:products][product_index][:description] , :price=> price}}

end

puts most_expensive_products_by_store

puts "\n"
puts "Q: Bonus"

continue = true
students = []

while continue do
    puts "add a student"
    student = gets.chomp
    students.push(student)
    puts "Do you want to continue ? (y/n)"
    ans = gets.chomp
    if(ans == "n")
        continue = false
    end
end

students.each {|i| puts i}