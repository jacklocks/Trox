# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'tools/show', type: :view do
  before(:each) do
    assign(:tool, Tool.create!(
                    title: 'Title',
                    description: 'MyText',
                    pic: 'Pic',
                    loan: false,
                    location: 'Location',
                    caution: '9.99',
                    condition: 'Condition'
                  ))
  end

  it 'renders attributes in <p>' do
    render
    expect(rendered).to match(/Title/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/Pic/)
    expect(rendered).to match(/false/)
    expect(rendered).to match(/Location/)
    expect(rendered).to match(/9.99/)
    expect(rendered).to match(/Condition/)
  end
end
