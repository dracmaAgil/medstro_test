# run irb on console and then require this file
# irb(main):001:0> require './medstro_test.rb'

# create and instance of earth and test create method 
# pl = Earth.new('tierra', 'big', true)
# pl.create('human')
class Earth
  attr_reader :name, :size, :destroyed
  def initialize(name, size, destroyed)
    @name = name
    @size = size
    @destroyed = destroyed
  end

  def create(object)
    
    case object
    when 'human'
      h = Human.new('Emito', '8', 'male', true)
      puts "Human #{h.name} created"
    when 'food'
      f = Food.new('protein', 'beef meat')
      puts "Fod #{f.type} created"
    when 'dog'
      d = Dog.new('jack', 'fb', '3', true)
      puts "Dog #{d.name} created"
    when 'cat'
      c = Cat.new('hdp', 'angora', '2', false)
      puts "Cat #{c.name} created"
    end
      
  end

  def destroy
    @destroyed = true
  end
end

# create an instance of human, dog, earth
# cat and food to test every method
class Human
  attr_reader :name, :age, :gender, :hungry
  def initialize(name, age, gender, hungry)
    @name = name
    @age = age
    @gender = gender
    @hungry = hungry
  end

  def eat_food(food)
    if is_hungry?
      puts "#{@name} is eating this #{food.name} and is not hungry anymore"
    else
      puts "#{@name} is not hungry"
    end
  end

  def is_hungry?
    @hungry
  end

  def pet_animal(animal)
    puts "#{@name} likes #{animal.breed}, that's why is petting #{animal.name}"
  end

  def destroy_earth(earth)
    earth.destroy
    puts "#{@name} has destroyed the earth"
  end

end

# to test food create human o dog or cat and
# test method eat_food(f)
class Food
  attr_reader :type, :name
  def initialize(type, name)
    @type = type
    @name = name
  end
end

# create an instance of human, dog, earth
# cat and food to test every method
class Animal
  attr_reader :name, :breed, :age, :hungry
  def initialize(name, breed, age, hungry)
    @name = name
    @breed = breed
    @age = age
    @hungry = hungry
  end

  def eat_food(food)
    if is_hungry?
      puts "#{self.name} is eating this #{food}, is not hungry anymore"
    else
      puts "#{self.name} is not hungry"
    end
  end

  def is_hungry?
    @hungry
  end

end
# to teste Dog or cat, create an isntance
# and test the son classes methods and father
# class methods too
class Dog < Animal

  def bark
    puts "#{@name} is barking"
  end

end

class Cat < Animal
  def meow
    puts "#{@name} is meowing"
  end
end
