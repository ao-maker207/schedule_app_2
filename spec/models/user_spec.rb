require 'rails_helper'

RSpec.describe User, type: :model do
  # 成功するケース
  it "「Hello World!」が出力されていること(1つ目)" do
    expect(User.foo).to eq "Hello World!"
  end

  # 失敗するケース
  it "「Unknown」が出力されていること(2つ目)" do
    expect(User.foo).to eq "Unknown"
  end

describe "#over_20_years_old?" do
    context "20歳以上の場合" do
      let!(:user) { FactoryBot.create(:user, age: 20) }

      it "返り値はtrueであること" do
        expect(user.over_20_years_old?).to be_truthy
      end
    end
  end
  FactoryBot.define do
  factory :user do
    # デフォルト値の設定
    name { "ポテパン 太郎" }
    email { "potepan@example.com" }
  end
end

describe ".ids_over_20_years_old" do
    let!(:user) { create(:user, age: 20) }

    # テストデータの作成
    before { create_list(:user, 2, age: 19) }

    it "20歳以上のユーザーIDのみ取得できること" do
    expect(User.ids_over_20_years_old).to match_array [user.id]
    end
    end
end
