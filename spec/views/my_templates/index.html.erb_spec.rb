require 'rails_helper'

RSpec.describe "my_templates/index", type: :view do
  before(:each) do
    assign(:my_templates, [
      MyTemplate.create!(
        :name => "MyText",
        :type => "Type",
        :body => "MyText"
      ),
      MyTemplate.create!(
        :name => "MyText",
        :type => "Type",
        :body => "MyText"
      )
    ])
  end

  it "renders a list of my_templates" do
    render
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "Type".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
  end
end
