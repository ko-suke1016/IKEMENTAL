require 'rails_helper'

RSpec.describe Inquiry, type: :model do
  describe 'モデルのカラムの値の有無について' do
  
    it "全てのカラムが存在する場合、保存される" do
      expect(FactoryBot.build(:inquiry)).to be_valid
    end

    it "categoryが存在しない場合保存されない" do
      expect(FactoryBot.build(:inquiry, category: "")).to_not be_valid
    end

    it "messageが存在しない場合保存されない" do
      expect(FactoryBot.build(:inquiry, message: "")).to_not be_valid
    end

    it "messageが4001字の場合、保存されない" do
      expect(FactoryBot.build(:inquiry, message: "a" * 4001)).to_not be_valid
    end

    it "nameが存在しない場合でも保存される" do
      expect(FactoryBot.build(:inquiry, name: "")).to be_valid
    end

  end
end
