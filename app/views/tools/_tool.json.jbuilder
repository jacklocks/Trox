# frozen_string_literal: true

json.extract! tool, :id, :title, :description, :pic, :loaned, :location, :caution, :condition, :created_at, :updated_at
json.url tool_url(tool, format: :json)
