class Item < ApplicationRecord
	# ユーザが持っているグッズ
	has_many :owned_informations, class_name: 'SerchCondition', foreign_key: 'owned_item_id'
  # ユーザが欲しいグッズ
  has_many :wanted_informations, class_name: 'SerchCondition', foreign_key: 'wanted_item_id'
  # ツイッタラーに需要あるグッズ
  has_many :demands, class_name: 'Collection', foreign_key: 'demanding'
  # ツイッタラーが供給するグッズ
  has_many :supplies, class_name: 'Collection', foreign_key: 'supplying'
  # owned_informations == demands && wanted_information == supplies の時に取引が成立する公算
  validates :name, presence: true, uniqueness: true, length: { maximum: 255 }
end
