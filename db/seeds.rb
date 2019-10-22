for i in 1..5
    p = Person.create(
        name: Faker::Name.name,
        age: rand(18..65),
        gender: rand(1..2)
    )
    p.teeth.create(
        number: 26
    )
    puts "Created person #{Person.last[:name]}, aged #{Person.last[:age]} years."
end

dog_ids = []
for i in 1..10
    d = Dog.create(
    name: Faker::Creature::Dog.name,
    person_id: rand(1..5)
    )
    d.teeth.create(
        number: 42
    )
    dog_ids.push(d.id)
    puts "Created dog #{Dog.last[:name]}."
end

park_ids = []
for i in 1..3
    p = Park.create(
        name: Faker::Address.community,
        size: rand(100..1000)
    )
    park_ids.push(p.id)
    puts "Created park #{Park.last[:name]} - #{Park.last[:size]} metres."
end

for i in 1..10
    DogsPark.create(
        dog_id: dog_ids.sample,
        park_id: park_ids.sample
    )
    puts "Created DogsPark"
end