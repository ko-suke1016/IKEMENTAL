namespace :mental_recovery do
    desc "ユーザーのメンタル値に3を足します"
    task :plus_mental_gage => :environment do
        users = User.where("physical_gage <= ?", 100)
        users.each do |user|
            score = user.physical_gage + 3
            user.update_column(:physical_gage, score)
        end
    end
end
