# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'scaffold_resources/edit', type: :view do
  before(:each) do
    @scaffold_resource = assign(:scaffold_resource, ScaffoldResource.create!(
                                                      name: 'MyString',
                                                      description: 'MyText'
                                                    ))
  end

  it 'renders the edit scaffold_resource form' do
    render

    assert_select 'form[action=?][method=?]', scaffold_resource_path(@scaffold_resource), 'post' do
      assert_select 'input[name=?]', 'scaffold_resource[name]'

      assert_select 'textarea[name=?]', 'scaffold_resource[description]'
    end
  end
end
