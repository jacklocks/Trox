# frozen_string_literal: true




  AdminUser.create!(email:ENV['ADMIN_MAIL'], password: ENV['ADMIN_PASSWORD'],
    password_confirmation: ENV['ADMIN_PASSWORD'])
