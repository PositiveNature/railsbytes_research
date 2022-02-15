# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'scaffold_resources/new', type: :view do
  before(:each) do
    assign(:scaffold_resource, ScaffoldResource.new(
                                 name: 'MyString',
                                 description: 'MyText'
                               ))
  end

  it 'renders new scaffold_resource form' do
    render

    assert_select 'form[action=?][method=?]', scaffold_resources_path, 'post' do
      assert_select 'input[name=?]', 'scaffold_resource[name]'

      assert_select 'textarea[name=?]', 'scaffold_resource[description]'
    end
  end
end
