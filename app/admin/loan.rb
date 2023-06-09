# frozen_string_literal: true

ActiveAdmin.register Loan do
  permit_params :start_date, :end_date

  index do
    selectable_column
    id_column
    column :start_date
    column :end_date
    column :created_at
    actions
  end

  show do
    attributes_table do
      row :start_date
      row :end_date
      row :created_at
      row :updated_at
    end
  end

  form do |f|
    f.inputs do
      f.input :start_date
      f.input :end_date
    end
    f.actions
  end
end
