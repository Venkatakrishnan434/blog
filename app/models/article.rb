require 'byebug'
class Article < ApplicationRecord
  after_save :log_changes, :logs_changes

  has_many :comments, dependent: :destroy

  validates :title, presence: true,
  length: { minimum: 5 }


  def log_changes
    if previous_changes.any?
      p "Deprecation warning not raise for previous_changes"
    else
      p "Failed"
    end
  end

  def logs_changes
    if saved_change_to_title?
      p "Success"
    end
  end

end
