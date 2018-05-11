#PRIVATE, PUBLIC, PROTECTED

class Animal
  attr_reader :name

  def initialize name
    @name = name
  end

  def jump
    eat
    puts "#{@name} is jumping"
  end

  private  #This accessor denied to call function eat and other below.

  def eat
    puts "#{@name} is eating"
  end
end

class Dog < Animal

  def initialize options
    super options
  end

  def burk
    puts "#{@name} is burking"
  end
end

dog = Dog.new "Dog"
dog.burk
# dog.eat #Will be error!!!!!



# cat = Cat.new 'Cat'
# cat.jump
# cat.eat  #Will be error!!!!!
