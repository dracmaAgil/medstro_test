# README

**File name:**
  medstro_test. 

**Author:**
Julian Alfonso Montes Valdenebro.

**Description:**

  In this file are contained Earth, Human, Food, Animal Dog and Cat classes.

  Dog and Cat are sub-classes of Animal Class; all the shared behavior or methods are in animal class, only the singular behaviors/methods like "bark" belongs to their owner class


**How to test this file:**

  Start irb on console and then require this file
  irb(main):001:0> require './medstro_test.rb'

**How to test Classes:**

  * **_Earth(name, size, destroyed):_**
    
    * Create an instance of earth class:
      * pl = Earth.new('tierra', 'big', false)
    * create method:
      * pl.create('human')*
    * destroyed method:
      * This method just check if the earth value destroyed is true or false.

  * **_Human(name, age, gender, hungry):_**
    
    * Create an instance of human class:
      Human.new('Poncho', '8', 'male', true)
    * eat_food(food) method:
      * We need to create an instance of food class and send it to this method; after that, check if human is hungry and if is true print this:
        * "#{@name} is eating this #{food.name} and is not hungry anymore"
      * If is not hungry, print this: 
        * "#{@name} is not hungry"
    * pet_animal(animal) method:
      * We need to create a dog or cat instance and send it and print this:
        * "#{@name} likes #{animal.breed}, that's why is petting #{animal.name}"
    * destroy_earth(earth):
      * We need to create an earth instance, check if destroyed value is false and if is false print this:
        * "#{@name} has destroyed the earth".
      * If is true, print this:
        * "the earth is already destroyed".

  * **_Dog/Cat:_**
    
    *  When we create a dog/cat instance, we are crating a subclass of animal class, sending all the animal attributes like this:
      * dog:
        * Dog.new('jack', 'french bulldog', '3', true)
      * cat:
        * Cat.new('kitty', 'angora', '2', false)
    * bark method:
      * We create a dog instance and call bark to print this:
        * "#{@name} is barking"
    * meow method:
      * We create a cat instance and call meow to print this:
        * "#{@name} is meowing"

    * eat_food(food) method:
      * We need to create an instance of food class and send it to this method; after that, check if dog/cat is hungry and if is true print this: 
        * "#{self.name} is eating this #{food}, is not hungry anymore"
      * If is not hungry, print this: 
        * "#{self.name} is not hungry"




**Note(*):** We can use only this strings to test this method: 'human', 'food', 'dog' and 'cat'
