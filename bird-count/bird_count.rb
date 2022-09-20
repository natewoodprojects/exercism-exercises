class BirdCount
  def self.last_week
    [0,2,5,3,6,7,8,4]
  end

  def initialize(birds_per_day)
    @birds = birds_per_day
  end

  def yesterday
    @birds[@birds.size - 2]
  end

  def total
    @birds.sum
  end

  def busy_days
    busy = @birds.select { |number| number > 4 }
    busy.size
  end

  def day_without_birds?
    @birds.any? { |number| number == 0}
  end
end
