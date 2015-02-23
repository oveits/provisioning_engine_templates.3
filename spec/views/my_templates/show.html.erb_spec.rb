require 'rails_helper'

RSpec.describe "my_templates/show", type: :view do
  before(:each) do
    @my_template = assign(:my_template, MyTemplate.create!(
      :name => "MyText",
      :type => "Type",
      :body => "MyText"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/Type/)
    expect(rendered).to match(/MyText/)
  end
end
