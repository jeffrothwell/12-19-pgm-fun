class Person

  def initialize(name, emotions)
    @name = name
    @emotions = emotions
  end

  def how_is_person
    descriptive_emotions = @emotions.transform_values do |rating|
      if rating == 3
        rating = "high"
      elsif rating == 2
        rating = "medium"
      elsif rating == 1
        rating = "low"
      end
    end

    descriptive_emotions.each do |emotion, rating|
      puts "I am feeling a #{rating} amount of #{emotion.to_s}"
    end
  end

end

my_emotions = {happiness: 3, sadness: 1, excitededness: 3, nervousness: 2}
my_name = "Jeff"

jeff = Person.new(my_name, my_emotions)

jeff.how_is_person
