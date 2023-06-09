# frozen_string_literal: true

class Loan < ApplicationRecord
  belongs_to :user
  belongs_to :tool
  validates :start_date, presence: true
  validates :end_date, presence: true
  validate :end_date_after_start_date
  after_create :mark_tool_as_loaned
  before_create :loaned_true_or_false
  after_destroy :mark_tool_as_false
  after_create :loan_send
  after_create :loan_confirmation_send
  validate :cant_loan_before_today

  def loan_send
    UserMailer.loan_email(self).deliver_now
  end

  def loan_confirmation_send
    UserMailer.loan_confirmation_email(self).deliver_now
  end

  private

  def mark_tool_as_false
    tool.update(loaned: false)
  end

  def mark_tool_as_loaned
    tool.update(loaned: true)
  end

  def end_date_after_start_date
    return unless start_date.present? && end_date.present? && end_date <= start_date

    errors.add(:end_date, "La date de retour doit être postérieure à la date d'emprunt")
  end

  def loaned_true_or_false
    return unless tool.loaned?

    errors.add('cet objet est déjà emprunté')
  end

  def cant_loan_before_today
    return unless start_date.present? && start_date < Date.today

    errors.add(:start_date, "Date d'emprunt invalide")
  end
end
