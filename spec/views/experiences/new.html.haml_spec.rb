require 'rails_helper'

RSpec.describe "experiences/new", type: :view do
  before(:each) do
    assign(:experience, Experience.new())
  end

  it "renders new experience form" do
    render

    assert_select "form[action=?][method=?]", experiences_path, "post" do
    end
  end
end
