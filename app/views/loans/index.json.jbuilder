# frozen_string_literal: true

json.array! @loans, partial: 'loans/loan', as: :loan
