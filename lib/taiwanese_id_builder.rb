module TaiwaneseIdBuilder

  TWID_LETTER = {
    "A" => 10, "B" => 11, "C" => 12, "D" => 13,
    "E" => 14, "F" => 15, "G" => 16, "H" => 17,
    "I" => 34, "J" => 18, "K" => 19, "L" => 20,
    "M" => 21, "N" => 22, "O" => 35, "P" => 23,
    "Q" => 24, "R" => 25, "S" => 26, "T" => 27,
    "U" => 28, "V" => 29, "W" => 32, "X" => 30,
    "Y" => 31, "Z" => 33
  }

  MULTIPLIER = [1,9,8,7,6,5,4,3,2,1,1].freeze

  def self.generate
    return "A123456789"
  end

  def self.valid?(twid, case_sensitive = true)

    twid = twid.upcase unless case_sensitive

    return false if twid.length != 10
    return false if !( /[A-Z](1|2)\d{8}\z/ =~ twid )

    # twid_array = twid.chars

    # 拿出第一個英文字母並轉成數字
    first_letter = twid[0]
    other_letters = twid[1..-1]

    digital_twid = TWID_LETTER[first_letter].to_s + other_letters

    digits = digital_twid.chars.map(&:to_i)

    weighted_sum = calculate_weighted_sum(digits)

    if weighted_sum % 10 == 0
      return true
    else
      return false
    end

  end

  def self.calculate_weighted_sum(digits)
    sum = 0
    11.times do |i|
      m = digits[i] * MULTIPLIER[i]
      sum += m
    end
    sum
  end


end
