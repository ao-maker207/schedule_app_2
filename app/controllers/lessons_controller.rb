class LessonsController < ApplicationController
  def hello
    @hello = "こんにちは"
    @message = "helloアクションが実行されています"
  end
end