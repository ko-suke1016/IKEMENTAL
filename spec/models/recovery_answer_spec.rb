require 'rails_helper'

RSpec.describe RecoveryAnswer, type: :model do
  describe 'recovery_answerモデルのカラムの値の有無について' do
  
    it "answer、score、associationが存在する場合、保存される" do
      expect(FactoryBot.build(:recovery_answer)).to be_valid
    end

    it "answerが存在しない場合保存されない" do
      expect(FactoryBot.build(:recovery_answer, answer: "")).to_not be_valid
    end

    it "scoreが存在しない場合保存されない" do
      expect(FactoryBot.build(:recovery_answer, score: "")).to_not be_valid
    end

    it "first_questionとリレーションの関係になっている" do
      expect(RecoveryAnswer.reflect_on_association(:recovery_question).macro).to eq :belongs_to
    end

  end
end
