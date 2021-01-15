puts "上/中/下一列揃えると当たり"
puts "BET×2のコイン払い出し"


coin = 100


loop {
  
puts "----------"
puts "残りコインは#{coin}枚です"
puts "----------"
puts "何コイン入れますか"
puts "1(10) 2(30) 3(50) 4(やめとく)"
player_bet = gets.to_i
coin_select = ["",10,30,50,"やめます"]

if coin_select[player_bet] == coin_select[4]
  break
elsif coin < coin_select[player_bet]
  puts "コインが足りません"
  break
else
  puts "#{coin_select[player_bet]}枚BETします"
  coin = coin - coin_select[player_bet]
end

nums = [*(3..7)]   
 
  puts "エンターを3回押して下さい"
  puts = gets
  puts "----------"
  puts "|#{nums[0]}| | |"
  puts "|#{nums[1]}| | |"
  puts "|#{nums[2]}| | |"
  puts "----------"
  
  nums2 = [*(3..7)]
  nums2.shuffle!
  
  puts = gets
  puts "|#{nums[0]}|#{nums2[0]}| |"
  puts "|#{nums[1]}|#{nums2[1]}| |"
  puts "|#{nums[2]}|#{nums2[2]}| |"
  puts "----------"
  
  nums3 = [*(3..7)]
  nums3.shuffle!
  
  puts = gets
  puts "|#{nums[0]}|#{nums2[0]}|#{nums3[0]}|"
  puts "|#{nums[1]}|#{nums2[1]}|#{nums3[1]}|"
  puts "|#{nums[2]}|#{nums2[2]}|#{nums3[2]}|"
  puts "----------"
  
  if (nums[0] == nums2[0]) && (nums2[0] == nums3[0]) || (nums[1] == nums2[1]) && (nums2[1] == nums3[1]) || (nums[2] == nums2[2]) && (nums2[2] == nums3[2])
    puts "おめでとう"
    
    coin = coin + coin_select[player_bet]*2
    
  elsif coin == 0
    puts "コインが0枚です"
    break
  end

}

puts "またチャレンジしてね"
