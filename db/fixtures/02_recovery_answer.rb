#問題１に対する回答
RecoveryAnswer.seed do |s|
    s.id = 1
    s.answer = '6~8時間'
    s.score = 7
    s.recovery_question_id = 1
end
RecoveryAnswer.seed do |s|
    s.id = 2
    s.answer = '9~11時間'
    s.score = 0
    s.recovery_question_id = 1
end

#問題2に対する回答
RecoveryAnswer.seed do |s|
    s.id = 3
    s.answer = '目一杯泣く'
    s.score = 0
    s.recovery_question_id = 2
end
RecoveryAnswer.seed do |s|
    s.id = 4
    s.answer = 'たくさん笑う'
    s.score = 7
    s.recovery_question_id = 2
end

#問題3に対する回答
RecoveryAnswer.seed do |s|
    s.id = 5
    s.answer = 'ポモドーロテクニック'
    s.score = 7
    s.recovery_question_id = 3
end
RecoveryAnswer.seed do |s|
    s.id = 6
    s.answer = 'インターリープ学習法'
    s.score = 0
    s.recovery_question_id = 3
end

#問題4に対する回答
RecoveryAnswer.seed do |s|
    s.id = 7
    s.answer = '自律神経を整えるから'
    s.score = 7
    s.recovery_question_id = 4
end
RecoveryAnswer.seed do |s|
    s.id = 8
    s.answer = '冷え性が改善するから'
    s.score = 0
    s.recovery_question_id = 4
end




