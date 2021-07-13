#問題１に対する回答
SecondAnswer.seed do |s|
    s.id = 1
    s.answer = 'とりあえず病院にいき、場合によっては診断書をもらうよういう'
    s.score = 0
    s.second_question_id = 1
end
SecondAnswer.seed do |s|
    s.id = 2
    s.answer = '寝れてないわけじゃないし気にしない'
    s.score = 5
    s.second_question_id = 1
end
SecondAnswer.seed do |s|
    s.id = 3
    s.answer = '根性が足りないからだと思い精神統一'
    s.score = 10
    s.second_question_id = 1
end

#問題２に対する回答
SecondAnswer.seed do |s|
    s.id = 4
    s.answer = '非常に嬉しいので心理的には絶好調だ！'
    s.score = 10
    s.second_question_id = 2
end
SecondAnswer.seed do |s|
    s.id = 5
    s.answer = '気にすることなんて特にない！'
    s.score = 5
    s.second_question_id = 2
end
SecondAnswer.seed do |s|
    s.id = 6
    s.answer = '過度な負担はかかってないかストレスチェックする'
    s.score = 0
    s.second_question_id = 2
end

#問題３に対する回答
SecondAnswer.seed do |s|
    s.id = 7
    s.answer = '意地でも自己解決に持ち込む'
    s.score = 5
    s.second_question_id = 3
end
SecondAnswer.seed do |s|
    s.id = 8
    s.answer = '上司や同僚に思いきって相談する'
    s.score = 0
    s.second_question_id = 3
end
SecondAnswer.seed do |s|
    s.id = 9
    s.answer = '自分の中に溜め込む。'
    s.score = 10
    s.second_question_id = 3
end

#問題４に対する回答
SecondAnswer.seed do |s|
    s.id = 10
    s.answer = 'どんな状態か面談を組んで聞いてみる'
    s.score = 5
    s.second_question_id = 4
end
SecondAnswer.seed do |s|
    s.id = 11
    s.answer = 'カウンセラーや専門機関にかかるよう打診する'
    s.score = 0
    s.second_question_id = 4
end
SecondAnswer.seed do |s|
    s.id = 12
    s.answer = 'どんまい！そう言う時もあるさ！と思い放置する'
    s.score = 10
    s.second_question_id= 4
end

#問題５に対する回答
SecondAnswer.seed do |s|
    s.id = 13
    s.answer = 'yahoo知恵袋に書き込む'
    s.score = 10
    s.second_question_id = 5
end
SecondAnswer.seed do |s|
    s.id = 14
    s.answer = '自分がストレスを感じた時を思い出す'
    s.score = 5
    s.second_question_id= 5
end
SecondAnswer.seed do |s|
    s.id = 15
    s.answer = '職場の労災認定基準を確認する'
    s.score = 0
    s.second_question_id= 5
end

#問題6に対する回答
SecondAnswer.seed do |s|
    s.id = 16
    s.answer = 'うつ病や精神疾患にかかる'
    s.score = 0
    s.second_question_id= 6
end
SecondAnswer.seed do |s|
    s.id = 17
    s.answer = '一周回って元気になる'
    s.score = 10
    s.second_question_id = 6
end
SecondAnswer.seed do |s|
    s.id = 18
    s.answer = '精神的に強くなる'
    s.score = 5
    s.second_question_id = 6
end

#問題7に対する回答
SecondAnswer.seed do |s|
    s.id = 19
    s.answer = '自己負担でよろしくな！'
    s.score = 10
    s.second_question_id = 7
end
SecondAnswer.seed do |s|
    s.id = 20
    s.answer = '大丈夫？痛くない？'
    s.score = 5
    s.second_question_id = 7
end
SecondAnswer.seed do |s|
    s.id = 21
    s.answer = '労災がおりるから病院で診断書はもらうんだよ'
    s.score = 0
    s.second_question_id = 7
end

#問題8に対する回答
SecondAnswer.seed do |s|
    s.id = 22
    s.answer = '「俺に迷惑はかけるな」と突っぱねる'
    s.score = 10
    s.second_question_id = 8
end
SecondAnswer.seed do |s|
    s.id = 23
    s.answer = '聞くだけ聞いて行動しない'
    s.score = 5
    s.second_question_id = 8
end
SecondAnswer.seed do |s|
    s.id = 24
    s.answer = '状況を聞き上司に相談し改善を図る'
    s.score = 0
    s.second_question_id = 8
end

#問題9に対する回答
SecondAnswer.seed do |s|
    s.id = 25
    s.answer = '「精神が弱い！！この軟弱者！！」と怒鳴り散らす'
    s.score = 10
    s.second_question_id = 9
end
SecondAnswer.seed do |s|
    s.id = 26
    s.answer = 'ストレス面で不安がないか話を聞いてみる'
    s.score = 0
    s.second_question_id = 9
end
SecondAnswer.seed do |s|
    s.id = 27
    s.answer = '「やる気ないなら帰っていいよ」で一蹴'
    s.score = 10
    s.second_question_id = 9
end

#問題10に対する回答
SecondAnswer.seed do |s|
    s.id = 28
    s.answer = 'できているところは認めてあげる'
    s.score = 0
    s.second_question_id = 10
end
SecondAnswer.seed do |s|
    s.id = 29
    s.answer = '少し今までの仕事よりも難易度が高いものをふる'
    s.score = 0
    s.second_question_id = 10
end
SecondAnswer.seed do |s|
    s.id = 30
    s.answer = '他人の成長など興味がないので放置'
    s.score = 10
    s.second_question_id = 10
end