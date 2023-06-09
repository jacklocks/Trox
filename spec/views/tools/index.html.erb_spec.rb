# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'tools/index', type: :view do
  before(:each) do
    assign(:tools, [
             Tool.create!(
               title: 'Title',
               description: 'MyText',
               pic: 'Pic',
               loan: false,
               location: 'Location',
               caution: '9.99',
               condition: 'Condition'
             ),
             Tool.create!(
               title: 'Title',
               description: 'MyText',
               pic: 'Pic',
               loan: false,
               location: 'Location',
               caution: '9.99',
               condition: 'Condition'
             )
           ])
  end

  it 'renders a list of tools' do
    render
    cell_selector = Rails::VERSION::STRING >= '7' ? 'div>p' : 'tr>td'
    assert_select cell_selector, text: Regexp.new('Title'.to_s), count: 2
    assert_select cell_selector, text: Regexp.new('MyText'.to_s), count: 2
    assert_select cell_selector, text: Regexp.new('Pic'.to_s), count: 2
    assert_select cell_selector, text: Regexp.new(false.to_s), count: 2
    assert_select cell_selector, text: Regexp.new('Location'.to_s), count: 2
    assert_select cell_selector, text: Regexp.new('9.99'.to_s), count: 2
    assert_select cell_selector, text: Regexp.new('Condition'.to_s), count: 2
  end
end
