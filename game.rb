puts "Tebak Kata"
puts "-------------------------"
puts "Level 1: Nama Binatang"
puts "Level 2: Nama Buah"
puts "Level 3: Nama Kota"
puts "Pilihan Kamu: "
lv = gets.chomp.to_i

if lv == 1
  arrWord = ["sapi","ayam","kera","itik"].shuffle
elsif lv == 2
  arrWord = ["mangga","anggur","jambu","alpukat"].shuffle
elsif lv == 3
  arrWord = ["bandung","jakarta","surabaya","denpasar"].shuffle
else
  puts "Ups, pilihan kamu tidak tersedia!"
  arrWord = []
end

point = 0

for i in 0..arrWord.length-1
  puts ""
  puts "Tebak Kata: #{arrWord[i].chars.shuffle.join}"
  puts "JAWAB: "
  s = gets.chomp

  if s != arrWord[i]
    point+=0
    puts "SALAH! Nilai Kamu: #{point}. Ulangi lagi!"
    puts  "Clue: "
    puts arrWord[i].gsub /[aeiou]/, "*"

    loop = true
    redo if loop == true
  else
    point+=1
    puts "BETUL! Nilai Kamu: #{point}"
  end
end
