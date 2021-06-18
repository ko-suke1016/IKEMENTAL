require 'rails_helper'

RSpec.describe RecoveryQuestion, type: :model do
    describe 'カラムの有無について' do
  
      it "questionの値がない場合保存されない" do
        expect(FactoryBot.build(:recovery_question, question: "")).to_not be_valid
      end
  
      it "questionの値が存在する場合保存される" do
        expect(FactoryBot.build(:recovery_question)).to be_valid
      end

      it "comentaryの値がない場合保存されない" do
        expect(FactoryBot.build(:recovery_question, comentary: "")).to_not be_valid
      end
  
      it "comentaryの値が存在する場合保存される" do
        expect(FactoryBot.build(:recovery_question)).to be_valid
      end
  
    end
end
