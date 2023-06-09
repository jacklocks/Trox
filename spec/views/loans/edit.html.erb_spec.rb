# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'loans/edit', type: :view do
  let(:loan) do
    Loan.create!
  end

  before(:each) do
    assign(:loan, loan)
  end

  it 'renders the edit loan form' do
    render

    assert_select 'form[action=?][method=?]', loan_path(loan), 'post' do
    end
  end
end
