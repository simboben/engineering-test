require 'rails_helper'

RSpec.describe "experiences/index", type: :view do
  before(:each) do
    assign(:experiences, [
      Experience.create!(),
      Experience.create!()
    ])
  end

  it "renders a list of experiences" do
    render
  end
end
