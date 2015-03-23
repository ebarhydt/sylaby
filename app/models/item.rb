# == Schema Information
#
# Table name: items
#
#  id            :integer          not null, primary key
#  title         :string
#  url           :string
#  description   :string
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#  upvotes_count :integer          default("0")
#  date          :date
#  year          :integer
#  author        :string
#  journal       :string
#

class Item < ActiveRecord::Base

  default_scope -> { order('year DESC') }

  validates :title, presence: true
  validates :url, presence: true

  # has_many :upvotes, dependent: :destroy
  has_many :user_items
  has_many :item_lists
  has_many :users, :through => :user_items
  has_many :lists, :through => :item_lists

end
