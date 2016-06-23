class Zombie
  def initialize(x, y)
    @x = x
    @y = y
    @directions = ["left", "right", "up", "down"]
    @direction = "right"
    @image = Gosu::Image.new("zombie.png")
    @steps = 0
  end

  def update
    walk()
  end

  def draw
    if @direction == "right"
      @image.draw_rot(@x, @y, z = 1, angle = 0, 0.5, 0.5)
    elsif @direction == "down"
      @image.draw_rot(@x, @y, z = 1, angle = 90, 0.5, 0.5)
    elsif @direction == "left"
      @image.draw_rot(@x, @y, z = 1, angle = 180, 0.5, 0.5)
    elsif @direction == "up"
      @image.draw_rot(@x, @y, z = 1, angle = 270, 0.5, 0.5)
    end
  end

  def walk
    if @direction == "right"
      @x += 1
    elsif @direction == "left"
      @x -= 1
    elsif @direction == "up"
      @y -= 1
    elsif @direction == "down"
      @y += 1
    end

    if @steps >= 50
      @direction = @directions.sample
      @steps = 0
    end

    @steps += 1

  end
end