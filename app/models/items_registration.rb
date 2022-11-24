class ItemsRegistration < ApplicationRecord
  belongs_to :registration
  belongs_to :item

  validates :registration_id, presence: true
  validates :item_id, presence: true, uniqueness: { scope: :registration_id }
end
