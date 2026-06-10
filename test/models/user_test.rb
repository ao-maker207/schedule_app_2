require "test_helper"

class UserTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end

# ①テスト対象クラス   User
# ②テスト対象メソッド：over_20_years_old?
# ③テスト条件              ：年齢が20歳以上の場合
# ④期待する結果           ：返り値がtrueとなること

# ⑤テスト条件に合わせてデータを準備
user = User.create(age: 20)

# ⑥-1テスト対象の処理を実行
result = user.over_20_years_old?

# ⑥-2テストの実行結果を検証
if result
  puts "成功"
else
  puts "失敗"
end
