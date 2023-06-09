# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'tools/new', type: :view do
  before(:each) do
    assign(:tool, Tool.new(
                    title: 'MyString',
                    description: 'MyText',
                    pic: 'MyString',
                    loan: false,
                    location: 'MyString',
                    caution: '9.99',
                    condition: 'MyString'
                  ))
  end

  it 'renders new tool form' do
    render

    assert_select 'form[action=?][method=?]', tools_path, 'post' do
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
