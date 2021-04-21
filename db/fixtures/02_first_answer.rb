#問題１に対する回答
FirstAnswer.seed do |s|
    s.id = 1
    s.answer = '鉄拳制裁'
    s.score = 0
    s.first_question_id = 1
end
FirstAnswer.seed do |s|
    s.id = 2
    s.answer = '休暇を与える'
    s.score = 5
    s.first_question_id = 1
end
FirstAnswer.seed do |s|
    s.id = 3
    s.answer = '面談を申し込む'
    s.score = 10
    s.first_question_id = 1
end

#問題２に対する回答
FirstAnswer.seed do |s|
    s.id = 4
    s.answer = '引っ叩く'
    s.score = 0
    s.first_question_id = 2
end
FirstAnswer.seed do |s|
    s.id = 5
    s.answer = 'ジャーマンスープレックス'
    s.score = 5
    s.first_question_id = 2
end
FirstAnswer.seed do |s|
    s.id = 6
    s.answer = '次忘れないよう対策を練る'
    s.score = 10
    s.first_question_id = 2
end

#問題３に対する回答
FirstAnswer.seed do |s|
    s.id = 7
    s.answer = '強請る'
    s.score = 0
    s.first_question_id = 3
end
FirstAnswer.seed do |s|
    s.id = 8
    s.answer = '会社に報告'
    s.score = 10
    s.first_question_id = 3
end
FirstAnswer.seed do |s|
    s.id = 9
    s.answer = 'なんかムカつくから嫌がらせ'
    s.score = 5
    s.first_question_id = 3
end

#問題４に対する回答
FirstAnswer.seed do |s|
    s.id = 10
    s.answer = '罵詈雑言'
    s.score = 0
    s.first_question_id = 4
end
FirstAnswer.seed do |s|
    s.id = 11
    s.answer = '連絡先を消す'
    s.score = 5
    s.first_question_id = 4
end
FirstAnswer.seed do |s|
    s.id = 12
    s.answer = 'なんで忘れてしまったのか理由を探る'
    s.score = 10
    s.first_question_id = 4
end

#問題５に対する回答
FirstAnswer.seed do |s|
    s.id = 13
    s.answer = '放置'
    s.score = 5
    s.first_question_id = 5
end
FirstAnswer.seed do |s|
    s.id = 14
    s.answer = '顔がむかつくからハイキック'
    s.score = 0
    s.first_question_id = 5
end
FirstAnswer.seed do |s|
    s.id = 15
    s.answer = '無理をさせず簡単な仕事からやってもらう'
    s.score = 10
    s.first_question_id = 5
end