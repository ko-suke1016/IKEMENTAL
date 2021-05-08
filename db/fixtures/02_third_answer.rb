#問題１に対する回答
ThirdAnswer.seed do |s|
    s.id = 1
    s.answer = 0
    s.score = 0
    s.third_question_id = 1
end
ThirdAnswer.seed do |s|
    s.id = 2
    s.answer = 1
    s.score = 5
    s.third_question_id = 1
end

#問題2に対する回答
ThirdAnswer.seed do |s|
    s.id = 3
    s.answer = 1
    s.score = 5
    s.third_question_id = 2
end
ThirdAnswer.seed do |s|
    s.id = 4
    s.answer = 0
    s.score = 0
    s.third_question_id = 2
end

#問題3に対する回答
ThirdAnswer.seed do |s|
    s.id = 5
    s.answer = 0
    s.score = 5
    s.third_question_id = 3
end
ThirdAnswer.seed do |s|
    s.id = 6
    s.answer = 1
    s.score = 0
    s.third_question_id = 3
end

#問題4に対する回答
ThirdAnswer.seed do |s|
    s.id = 7
    s.answer = 0
    s.score = 5
    s.third_question_id = 4
end
ThirdAnswer.seed do |s|
    s.id = 8
    s.answer = 1
    s.score = 0
    s.third_question_id = 4
end