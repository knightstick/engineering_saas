class Dessert
  attr_accessor :calories, :name
  def initialize(name, calories)
    @calories = calories
    @name = name
  end
  def healthy?
    true if @calories < 200
  end
  def delicious?
    true
  end
end

class JellyBean < Dessert
  attr_reader :flavor
  def initialize(flavor)
    @flavor = flavor
    super("#{flavor} jelly bean", 5)
  end

  def delicious?
    return false if @flavor == 'licorice'
    super
  end
end
