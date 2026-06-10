require 'rails_helper'

RSpec.describe "schedules/new", type: :view do
  before(:each) do
    assign(:schedule, Schedule.new(
      title: "MyString",
      is_all_day: false,
      memo: "MyText"
    ))
  end

  it "renders new schedule form" do
    render

    assert_select "form[action=?][method=?]", schedules_path, "post" do

      assert_select "input[name=?]", "schedule[title]"

      assert_select "input[name=?]", "schedule[is_all_day]"

      assert_select "textarea[name=?]", "schedule[memo]"
    end
  end
end
