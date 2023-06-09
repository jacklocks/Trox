# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'loans/new', type: :view do
  before(:each) do
    assign(:loan, Loan.new)
  end

  it 'renders new loan form' do
    render

    assert_select 'form[action=?][method=?]', loans_path, 'post' do
    end
  end
end
