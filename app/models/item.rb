# == Schema Information
#
# Table name: items
#
#  id          :integer          not null, primary key
#  title       :string
#  url         :string
#  description :string
#  votes       :integer
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class Item < ActiveRecord::Base
end
