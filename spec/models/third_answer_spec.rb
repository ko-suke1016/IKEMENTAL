require 'rails_helper'

RSpec.describe ThirdAnswer, type: :model do
    describe 'second_answerモデルのカラムの値の有無について' do
  
      it "answer、score、associationが存在する場合、保存される" do
        expect(FactoryBot.build(:third_answer)).to be_valid
      end
  
      it "answerが存在しない場合保存されない" do
        expect(FactoryBot.build(:third_answer, answer: "")).to_not be_valid
      end
  
      it "scoreが存在しない場合保存されない" do
        expect(FactoryBot.build(:third_answer, score: "")).to_not be_valid
      end
  
      it "first_questionとリレーションの関係になっている" do
        expect(ThirdAnswer.reflect_on_association(:third_question).macro).to eq :belongs_to
      end
  
    end
  
end
