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
      full_name = " #{student[:first_name]} #{student[:last_name]} "
      full_name.upcase
end 

puts upper_case_full_names

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
              description: 'a MacBook',
              price: 3000
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

first_order_for_each_user = users.map do |order|
  "#{order[:orders].first}"
end
puts first_order_for_each_user


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

    coffee_sum = []
    person[:transactions].map do |transaction|
        if transaction[:type] == 'COFFEE'
            coffee_sum.push(transaction[:amount])
        end
    end

    { 
    name: person[:name] , 
    coffee_average: coffee_sum.reduce(:+) / coffee_sum.length 
    }
end

puts coffee_average_per_person

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
    expensive = store[:products].max_by do |product|
        product[:price]
    end  

    {
       name: store[:store_name] ,
       price: expensive[:price]
    }
end 

puts most_expensive_products_by_store