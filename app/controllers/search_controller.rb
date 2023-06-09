# frozen_string_literal: true

class SearchController < ApplicationController
  def index
    @query = Tool.ransack(params[:q])
    @tools = @query.result(distinct: true)
  end
end
