# frozen_string_literal: true

ActiveAdmin.register Tool do
  permit_params :title, :description, :pic, :loan, :location, :caution, :condition

  index do
    selectable_column
    id_column
    column :title
    column :description
    column :pic
    column :loan
    column :location
    column :caution
    column :condition
    actions
  end

  filter :title
  filter :description
  filter :loan
  filter :location

  form do |f|
    f.inputs do
      f.input :title
      f.input :description
      f.input :pic
      f.input :loan
      f.input :location
      f.input :caution
      f.input :condition
    end
    f.actions
  end
end
