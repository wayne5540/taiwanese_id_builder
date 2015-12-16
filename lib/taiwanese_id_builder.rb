module TaiwaneseIdBuilder

  TWID_LETTER = {
    "A" => [1, 0], "B" => [1, 1], "C" => [1, 2], "D" => [1, 3],
    "E" => [1, 4], "F" => [1, 5], "G" => [1, 6], "H" => [1, 7],
    "I" => [3, 4], "J" => [1, 8], "K" => [1, 9], "L" => [2, 0],
    "M" => [2, 1], "N" => [2, 2], "O" => [3, 5], "P" => [2, 3],
    "Q" => [2, 4], "R" => [2, 5], "S" => [2, 6], "T" => [2, 7],
    "U" => [2, 8], "V" => [2, 9], "W" => [3, 2], "X" => [3, 0],
    "Y" => [3, 1], "Z" => [3, 3]
  }

  MULTIPLIER = [1,9,8,7,6,5,4,3,2,1,1].freeze


  # TODO: Refactor this method first!
  def self.generate(gender = nil)
    sum = 0
    twid = ""

    first_letter = TWID_LETTER.keys.sample

    sum += TWID_LETTER[first_letter][0] * MULTIPLIER[0]
    sum += TWID_LETTER[first_letter][1] * MULTIPLIER[1]


    twid += first_letter.to_s

    case gender
    when "male"
      second_letter = 1
    when "female"
      second_letter = 2
    else
      second_letter = [1, 2].sample
    end
    sum += second_letter * MULTIPLIER[2]
    twid += second_letter.to_s

    6.times do |i|
      letter = Random.rand(1..9)
      sum += letter * MULTIPLIER[i + 3]
      twid += letter.to_s
    end

    if sum % 10 == 0
      last_two_letter = Random.rand(1..9)
      sum += last_two_letter
      twid += last_two_letter.to_s

      last_letter = 10 - last_two_letter
      sum += last_letter
      twid += last_letter.to_s
    elsif sum % 10 == 9
      last_two_letter = Random.rand(2..10)
      sum += last_two_letter
      twid += last_two_letter.to_s

      last_letter = 11 - last_two_letter
      sum += last_letter
      twid += last_letter.to_s
    else
      max_range = 10 - (sum % 10) - 1
      last_two_letter = Random.rand(1..max_range)
      sum += last_two_letter
      twid += last_two_letter.to_s

      last_letter = max_range + 1 - last_two_letter
      sum += last_letter
      twid += last_letter.to_s
    end

    return twid
  end

  def self.valid?(twid, case_sensitive = true)
    twid = twid.upcase unless case_sensitive

    return false if twid.length != 10
    return false if !( /[A-Z](1|2)\d{8}\z/ =~ twid )

    characters = twid.chars
    digits = TWID_LETTER[characters.shift] + characters.map(&:to_i)

    weighted_sum = calculate_weighted_sum(digits)

    return weighted_sum % 10 == 0
  end

  private

  def self.calculate_weighted_sum(digits)
    sum = 0
    11.times do |i|
      m = digits[i] * MULTIPLIER[i]
      sum += m
    end
    sum
  end


end
