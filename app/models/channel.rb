class Channel < ApplicationRecord
  has_many :messages, as: :messagable, :dependent => :destroy
  belongs_Userto :team
  belongs_to :user
  validates_presence_of :slug, :team, :user
end