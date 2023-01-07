puts "最初はグー"


def janken
  
  puts "----------"
  puts "じゃんけん…"
  puts "[0]グー / [1]チョキ / [2]パー"
  
  player_hand = gets.to_i
  if player_hand >= 3
    puts "----------"
    puts "選択肢から選んでください"
    return true
  end
  
  program_hand = rand(3)
  
  jankens = ["グー","チョキ","パー"]
  
  puts "-----------"
  puts "あなた:#{jankens[player_hand]}を出しました"
  puts "相手:#{jankens[program_hand]}を出しました"
  
  #あいこの処理
  if player_hand == program_hand
    puts "----------"
    puts "仕切り直しです"
    return true
  #勝ちの処理
  elsif (player_hand == 0 && program_hand == 1)||(player_hand = 1 && program_hand == 2)||(player_hand == 2 && program_hand == 0)
    #あっち向いての処理
    @janken_result = "win"
    p acchi
  #負けの処理
  else
    @janken_result = "lose"
    p acchi
  end
end


def acchi
    puts "----------"
    puts "あっち向いて…"
    puts "[0]上↑ / [1]右→ / [2]下↓ / [3]左←"
    
    player_select = gets.to_i
      if player_select >= 4
      puts "----------"
      puts "選択肢から選んでください"
      return true
      end
    
    program_select = rand(4)
    directions = ["上","右","下","左"]
    
    puts "----------"
    puts "ホイ！(あなた:#{directions[player_select]})"
    puts "ほい！(相手:#{directions[program_select]})"
    #ジャンケンで勝つ、あっち向いてで勝つ
      if (player_select == program_select) && (@janken_result = "win")
       puts "----------"
       puts "あなたの勝ちです。"
       return false
    #ジャンケンで負ける、あっち向いてで負ける
      elsif (player_select == program_select) && (@janken_result = "lose")
       puts "----------"
       puts "あなたの負けです。\n機械「俺の勝ち。なんで負けたか明日まで考えてきてください。」"
       return false
    #方向が一致しない
      else
       puts "----------"
       puts "仕切り直しです。"
       return true
      end
  
end


next_game = true

while next_game do
  next_game = janken
end