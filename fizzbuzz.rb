def fizzbuzz
  (1..100).to_a.map! do |x|
    if (x % 5 == 0) && (x % 3 == 0)
      "#{x}".gsub("#{x}", "fizzbuzz")
    elsif x % 5 == 0
      "#{x}".gsub("#{x}", "buzz")
    elsif x % 3 == 0
      "#{x}".gsub("#{x}", "fizz")
    else
      x
    end
  end
end

puts fizzbuzz.join(" ")
