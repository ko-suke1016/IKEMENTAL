#問題１に対する回答
SecondAnswer.seed do |s|
    s.id = 1
    s.answer = 'とりあえず病院にいかせ、場合によっては診断書をもらうよういう'
    s.score = 0
    s.second_question_id = 1
end
SecondAnswer.seed do |s|
    s.id = 2
    s.answer = '病は気からと言って気合で押し切らせる'
    s.score = 5
    s.second_question_id = 1
end
SecondAnswer.seed do |s|
    s.id = 3
    s.answer = 'どうせ大したことないだろうと聞く耳を持たない'
    s.score = 10
    s.second_question_id = 1
end

#問題２に対する回答
SecondAnswer.seed do |s|
    s.id = 4
    s.answer = '腫れていたが人手が足りないのでデスクワークを回した'
    s.score = 10
    s.second_question_id = 2
end
SecondAnswer.seed do |s|
    s.id = 5
    s.answer = 'とりあえず冷やすようにいってから早退させた'
    s.score = 0
    s.second_question_id = 2
end
SecondAnswer.seed do |s|
    s.id = 6
    s.answer = '聞く耳を持たず要領が悪いと評価を下げる'
    s.score = 5
    s.second_question_id = 2
end

#問題３に対する回答
SecondAnswer.seed do |s|
    s.id = 7
    s.answer = '出勤途中なら自己負担なので会社は関係ないという'
    s.score = 10
    s.second_question_id = 3
end
SecondAnswer.seed do |s|
    s.id = 8
    s.answer = '領収書などはとっておくように言い、診断書は提出するよう促す'
    s.score = 0
    s.second_question_id = 3
end
SecondAnswer.seed do |s|
    s.id = 9
    s.answer = '会社に遅刻して連絡が遅れるとは何事だと怒鳴りつける'
    s.score = 5
    s.second_question_id = 3
end

#問題４に対する回答
SecondAnswer.seed do |s|
    s.id = 10
    s.answer = 'クレームが来てるぞなんでなんだと叱りつける'
    s.score = 5
    s.second_question_id = 4
end
SecondAnswer.seed do |s|
    s.id = 11
    s.answer = '仕事から外し社内ニートにする'
    s.score = 10
    s.second_question_id = 4
end
SecondAnswer.seed do |s|
    s.id = 12
    s.answer = '自分で反省点を探らせるなどのPDCAのアドバイスをする'
    s.score = 0
    s.second_question_id= 4
end

#問題５に対する回答
SecondAnswer.seed do |s|
    s.id = 13
    s.answer = '放置'
    s.score = 10
    s.second_question_id = 5
end
SecondAnswer.seed do |s|
    s.id = 14
    s.answer = '時短勤務で簡単な作業から行うよう仕事を回す'
    s.score = 0
    s.second_question_id= 5
end
SecondAnswer.seed do |s|
    s.id = 15
    s.answer = '以前と同じ仕事を渡しこなしてもらう'
    s.score = 5
    s.second_question_id= 5
end

#問題6に対する回答
SecondAnswer.seed do |s|
    s.id = 16
    s.answer = 'グーパンチ'
    s.score = 5
    s.second_question_id= 6
end
SecondAnswer.seed do |s|
    s.id = 17
    s.answer = '陰口をいい自主退社させる方向でみんなと話し合う'
    s.score = 10
    s.second_question_id = 6
end
SecondAnswer.seed do |s|
    s.id = 18
    s.answer = '一度本人にクレームの内容を話し心当たりがあるのかというところから確認する'
    s.score = 0
    s.second_question_id = 6
end

#問題7に対する回答
SecondAnswer.seed do |s|
    s.id = 19
    s.answer = '人と比べることに意味なんかないんだから1日を大切にがんばれと励ます'
    s.score = 0
    s.second_question_id = 7
end
SecondAnswer.seed do |s|
    s.id = 20
    s.answer = 'お前は鈍臭くて鈍い奴だからなと傷口に塩をぬる'
    s.score = 10
    s.second_question_id = 7
end
SecondAnswer.seed do |s|
    s.id = 21
    s.answer = 'そっとしておき相談を持ちかけてくるのを待つ'
    s.score = 0
    s.second_question_id = 7
end

#問題8に対する回答
SecondAnswer.seed do |s|
    s.id = 22
    s.answer = '俺の時代はそんなの当たり前だったよと聞き流す'
    s.score = 10
    s.second_question_id = 8
end
SecondAnswer.seed do |s|
    s.id = 23
    s.answer = '詳しい内容と情報をヒアリングして確認する'
    s.score = 0
    s.second_question_id = 8
end
SecondAnswer.seed do |s|
    s.id = 24
    s.answer = '大丈夫だよ。気にすんなと対処はしないが励ます。'
    s.score = 5
    s.second_question_id = 8
end

#問題9に対する回答
SecondAnswer.seed do |s|
    s.id = 25
    s.answer = '明日から出社しなくていいよ'
    s.score = 10
    s.second_question_id = 9
end
SecondAnswer.seed do |s|
    s.id = 26
    s.answer = '厳正な処置をとるために詳細を確認する'
    s.score = 0
    s.second_question_id = 9
end
SecondAnswer.seed do |s|
    s.id = 27
    s.answer = '自身の評価もあるので叱るだけに止める'
    s.score = 5
    s.second_question_id = 9
end

#問題10に対する回答
SecondAnswer.seed do |s|
    s.id = 28
    s.answer = '今後もがんばれよと今のままの仕事を振り続ける'
    s.score = 10
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
    s.answer = '適切な評価を行うために数字をおい評価に反映する'
    s.score = 0
    s.second_question_id = 10
end