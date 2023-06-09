# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'tools/edit', type: :view do
  let(:tool) do
    Tool.create!(
      title: 'MyString',
      description: 'MyText',
      pic: 'MyString',
      loan: false,
      location: 'MyString',
      caution: '9.99',
      condition: 'MyString'
    )
  end

  before(:each) do
    assign(:tool, tool)
  end

  it 'renders the edit tool form' do
    render

    assert_select 'form[action=?][method=?]', tool_path(tool), 'post' do
      assert_select 'input[name=?]', 'tool[title]'

      assert_select 'textarea[name=?]', 'tool[description]'

      assert_select 'input[name=?]', 'tool[pic]'

      assert_select 'input[name=?]', 'tool[loan]'

      assert_select 'input[name=?]', 'tool[location]'

      assert_select 'input[name=?]', 'tool[caution]'

      assert_select 'input[name=?]', 'tool[condition]'
    end
  end
end
