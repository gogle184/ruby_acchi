#追加　33行目、36行目、65行目 1/7

puts "最初はグー"
janken_result = 0

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
  #指摘について・・・２つ目のplayerの=が一つになっていました・・・
  #相手がパーを出すと自分が後出しでチョキを出すとんでも仕様になってました。
  elsif (player_hand == 0 && program_hand == 1)||(player_hand == 1 && program_hand == 2)||(player_hand == 2 && program_hand == 0)
    #あっち向いての処理
    @janken_result = 1
    #追加:aで呼び出すと"出力してしまうと考え、returnにしました。"
    return acchi
  #負けの処理
  else
    @janken_result = 2
    return acchi
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
    #追加：@janken~の==であるはずが一つになっていました。
      if (player_select == program_select && @janken_result == 1)
       puts "----------"
       puts "あなたの勝ちです。"
       exit
    #ジャンケンで負ける、あっち向いてで負ける
      elsif (player_select == program_select && @janken_result == 2)
       puts "----------"
       puts "あなたの負けです。"
       exit
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