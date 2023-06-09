# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'loans/show', type: :view do
  before(:each) do
    assign(:loan, Loan.create!)
  end

  it 'renders attributes in <p>' do
    render
  end
end
