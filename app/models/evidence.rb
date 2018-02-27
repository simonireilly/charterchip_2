class Evidence < ApplicationRecord
  belongs_to :user
  validates :title, presence: true, length: { minimum: 2, maximum: 100 }

  private

  def self.all_evidences
    order(created_at: :asc)
  end

  def self.recent_evidences
    order(updated_at: :desc).limit(4)
  end
end
