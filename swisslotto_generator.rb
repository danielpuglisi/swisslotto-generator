combinations = ARGV[0] ? ARGV[0].to_i : 1

system("echo 'Generiere Lottozahlen...'")

combinations.times do
  regular_numbers = (1..42).to_a
  random_numbers = []

  6.times do
    random_numbers << regular_numbers.delete_at(rand(regular_numbers.length))
  end

  random_numbers = random_numbers.sort
  system("echo '========================'")
  system("echo 'Lottozahlen: #{random_numbers.join(' ')}'")
  system("echo 'Glückszahl:  #{rand(1..6)}'")
end
