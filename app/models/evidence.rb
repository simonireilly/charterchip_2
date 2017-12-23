class Evidence < ApplicationRecord
  belongs_to :user
  default_scope { order(created_at: :desc) }
  validates :title, presence: true, length: { minimum: 2, maximum: 100 }
end
