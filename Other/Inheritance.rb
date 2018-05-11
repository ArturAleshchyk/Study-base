#Superclass
class Animal
  def initialize name
    @name = name
  end

  def run
    puts  "#{@name} is running"
  end

  def sleep
    puts 'ZzzZzzz'
  end
end

#Add inheritance to class Cat
class Cat < Animal
  def initialize             #Если есть конструктор в мастер классе его нужно объявить и наследуемом классе
    super 'Cat'        #Передаем значение в мастер класс
  end
end

#Add inheritance to class Dog
class Dog < Animal
  def initialize            #Если есть конструктор в мастер классе его нужно объявить и наследуемом классе
    super 'Dog'       #Передаем значение в мастер класс
  end
end

cat = Cat.new
cat.run

dog = Dog.new
dog.run
