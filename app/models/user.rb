class User < ApplicationRecord
  has_many :posts

  validates :name, presence: true
  validates :email, uniqueness: true, presence: true
  validates :age, numericality: true
  validates :introduction, length: { in: 10..30 }
end


def self.foo
    "Hello World!"
    end

class User < ApplicationRecord
  # 20歳以上か否かを真偽値で返す
  def over_20_years_old?
    self.age >= 20
  end

  def self.ids_over_20_years_old
    where("age >= 20").ids
    end
end
