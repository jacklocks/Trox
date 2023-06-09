# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'loans/index', type: :view do
  before(:each) do
    assign(:loans, [
             Loan.create!,
             Loan.create!
           ])
  end

  it 'renders a list of loans' do
    render
    cell_selector = Rails::VERSION::STRING >= '7' ? 'div>p' : 'tr>td'
  end
end
