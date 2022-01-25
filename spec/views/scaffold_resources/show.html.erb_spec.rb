require 'rails_helper'

RSpec.describe "scaffold_resources/show", type: :view do
  before(:each) do
    @scaffold_resource = assign(:scaffold_resource, ScaffoldResource.create!(
      name: "Name",
      description: "MyText"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/MyText/)
  end
end
