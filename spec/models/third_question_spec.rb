require 'rails_helper'

RSpec.describe ThirdQuestion, type: :model do
    describe 'カラムの有無について' do
      context 'クエスチョンカラムについて' do
        it "questionの値がない場合保存されない" do
          expect(FactoryBot.build(:third_question, question: "")).to_not be_valid
        end

        it "questionの値が存在する場合保存される" do
          expect(FactoryBot.build(:third_question)).to be_valid
        end
      end

      context 'ageカラムについて' do
        it "ageの値がない場合保存されない" do
          expect(FactoryBot.build(:third_question, age: "")).to_not be_valid
        end

        it "questionの値が存在する場合保存される" do
          expect(FactoryBot.build(:third_question)).to be_valid
        end
      end

      context 'sexカラムについて' do
        it "sexの値がない場合保存されない" do
          expect(FactoryBot.build(:third_question, sex: "")).to_not be_valid
        end

        it "questionの値が存在する場合保存される" do
          expect(FactoryBot.build(:third_question)).to be_valid
        end
      end

      context 'comentaryカラムについて' do
        it "comentaryの値がない場合保存されない" do
          expect(FactoryBot.build(:third_question, profession: "")).to_not be_valid
        end

        it "questionの値が存在する場合保存される" do
          expect(FactoryBot.build(:third_question)).to be_valid
        end
      end
    end
end
