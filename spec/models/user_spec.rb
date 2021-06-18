require 'rails_helper'

RSpec.describe User, type: :model do

describe 'ユーザーモデルの値の有無についてのテスト' do
    context 'nameカラムについて' do
        it "名前とメールアドレスとパスワードがあれば登録できる" do
            expect(FactoryBot.create(:user)).to be_valid
        end

        it "名前がなければ登録できない" do
            expect(FactoryBot.build(:user, name: "")).to_not be_valid 
        end

        it "名前がなかった場合任意のエラーメッセージが表示される" do
            @user = FactoryBot.build(:user, name: "")
            @user.valid?
            expect(@user.errors[:name]).to include("を入力してください")
        end
    end

    context 'emailカラムについて' do
        it "メールアドレスがなければ登録できない" do
            expect(FactoryBot.build(:user, email: "")).to_not be_valid 
        end

        it "メールアドレスが重複していたら登録できない" do
            user1 = FactoryBot.create(:user)
            expect(FactoryBot.build(:user, email: user1.email)).to_not be_valid
        end

        it "メールアドレスが重複していたらエラーメッセージが表示される" do
            user1 = FactoryBot.create(:user)
            @user = FactoryBot.build(:user, email: user1.email)
            @user.valid?
            expect(@user.errors[:email]).to include("は既に登録されています。")
        end
    
        it "メールアドレスが小文字であること" do
            @user = FactoryBot.create(:user, email: "BUKAMENTAL@example.com")
            expect(@user.email).to eq 'bukamental@example.com'
        end
    
        it "メールアドレスのフォーマットに＠がついていなければいけないこと" do
            @user = FactoryBot.build(:user, email: "bukamentalexample.com")
            @user.valid?
            expect(@user.errors[:email]).to include("は不正な値です")
        end
    end

    context 'パスワードカラムについて' do
        it "パスワードがなければ登録できない" do
            expect(FactoryBot.build(:user, password: "")).to_not be_valid 
        end

        it "パスワードがない場合任意のエラーメッセージが表示される" do
            @user = FactoryBot.build(:user, password: "")
            @user.valid?
            expect(@user.errors[:password]).to include("が短すぎます。")
        end
    
        it "パスワード(確認)がない場合任意のエラーメッセージが表示される" do
            @user = FactoryBot.build(:user, password: "", password_confirmation: "")
            @user.valid?
            expect(@user.errors[:password]).to include("が短すぎます。")
            expect(@user.errors[:password_confirmation]).to include("が入力されていません。")
        end
    
        it "パスワードとパスワード(確認)がない場合任意のエラーメッセージが表示される" do
            @user = FactoryBot.build(:user, password_confirmation: "")
            @user.valid?
            expect(@user.errors[:password_confirmation]).to include("がパスワードと一致しません")
        end
    
        it "パスワードが暗号化されているか" do
            user = FactoryBot.create(:user)
            expect(user.crypted_password).to_not eq "password"
        end
    end

    context 'フィジカルゲージについて' do
        it "フィジカルゲージにデフォルトで100が入っている" do
            expect(FactoryBot.build(:user, physical_gage: "")).to_not be_valid
        end
    
        it "フィジカルゲージに100より大きい値が入ると登録できないようになっている" do
            expect(FactoryBot.build(:user, physical_gage: 101)).to_not be_valid
        end
    
        it "フィジカルゲージに0より小さいの値が入ると登録できないようになっている" do
            expect(FactoryBot.build(:user, physical_gage: -1)).to_not be_valid
        end
    end

    context 'エクスペリエンスゲージについて' do
        it "エクスペリエンスゲージにデフォルトで0が入っている" do
            expect(FactoryBot.build(:user, experience_gage: "")).to_not be_valid
        end
    
        it "エクスペリエンスゲージに50より大きい値が入ると登録できない" do
            expect(FactoryBot.build(:user, experience_gage: 51)).to_not be_valid
        end
    
        it "エクスペリエンスゲージに0より小さいの値が入ると登録できないようになっている" do
            expect(FactoryBot.build(:user, experience_gage: -1)).to_not be_valid
        end
    end

    context 'ポジションについて' do
        it "ポジションにデフォルトでヨワヨワメンタル新入社員が入っている" do
            expect(FactoryBot.build(:user, position: "")).to_not be_valid
        end
    end

end
end
