class Monkey

  attr_reader :name, :species, :foods_eaten

  def initialize(name, species)
    @name = name
    @species = species
    @foods_eaten = []
  end

  def name
    @name.capitalize
  end

  def eat(food)
    vowels = ['a', 'e', 'i', 'o', 'u']

    @foods_eaten << food unless vowels.include?(food.chars.first.downcase)
  end

  def introduce
    "Hi, I'm #{@name}! I'm a #{@species} #{@foods_eaten}"
  end

end