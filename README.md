File name: medstro_test. 

Author: Julian Alfonso Montes Valdenebro.

Description:

  In this file are contained Earth, Human, Food, Animal Dog and Cat classes.


  Dog and Cat sub-classes of Animal Class; all the sharing behavior or methods are in animal class, only the singular behavior like "bark" belongs to the owner class


How to test this file:

  Start irb on console and then require this file
  irb(main):001:0> require './medstro_test.rb'

How to test Classes:

  Earth(name, size, destroyed):
    
    Create an instance of earth class:
      pl = Earth.new('tierra', 'big', false)
    
    create method:
      pl.create('human')*
    
    destroyed method:
      This method just check if the earth value destroyed is tru or false.

  Human(name, age, gender, hungry):
    
    Create an instance of human class:
      Human.new('Poncho', '8', 'male', true)

    eat_food(food) method:
      We need to creat an instance of food class and send it to this method; after that, check if human is hungry and if is true print this: 
        "#{@name} is eating this #{food.name} and is not hungry anymore"
      If is not hungry, print this: 
        "#{@name} is not hungry"
    
    pet_animal(animal) method:
      We need to create a dog or cat instance and send it and print this:
        "#{@name} likes #{animal.breed}, that's why is petting #{animal.name}"

    destroy_earth(earth):
      We need to create an earth instance, check if destroyed value is false and if is false print this:
        "#{@name} has destroyed the earth".
      If is true, print this:
        "the earth is already destroyed".

  Dog/Cat:
    
    When we create a dog/cat instance, we are crating a subclass of animal class and we can use all the methods on the father class and we need to create with all the animal class attributes like this:
      dog:
        Dog.new('jack', 'french bulldog', '3', true)
      cat:
        Cat.new('kitty', 'angora', '2', false)
    
    bark method:
      We create a dog instance and call bark to print this:
        "#{@name} is barking"
    
    meow method:
      We create a cat instance and call meow to print this:
        "#{@name} is meowing"

    eat_food(food) method:
      We need to creat an instance of food class and send it to this method; after that, check if dog/cat is hungry and if is true print this: 
        "#{self.name} is eating this #{food}, is not hungry anymore"
      If is not hungry, print this: 
        "#{self.name} is not hungry"




*We ca use only this strings to test this metods: 'human', 'food', 'dog' and 'cat'
