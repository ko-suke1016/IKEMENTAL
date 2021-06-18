require 'rails_helper'

RSpec.describe FirstQuestion, type: :model do

  describe 'questionカラムの有無について' do

    it "questionの値がない場合保存されない" do
      expect(FactoryBot.build(:first_question, question: "")).to_not be_valid
    end

    it "questionの値が存在する場合保存される" do
      expect(FactoryBot.build(:first_question)).to be_valid
    end

  end

end
