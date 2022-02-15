# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'scaffold_resources/index', type: :view do
  before(:each) do
    assign(:scaffold_resources, [
             ScaffoldResource.create!(
               name: 'Name',
               description: 'MyText'
             ),
             ScaffoldResource.create!(
               name: 'Name',
               description: 'MyText'
             )
           ])
  end

  it 'renders a list of scaffold_resources' do
    render
    assert_select 'tr>td', text: 'Name'.to_s, count: 2
    assert_select 'tr>td', text: 'MyText'.to_s, count: 2
  end
end
