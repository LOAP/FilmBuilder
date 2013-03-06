# == Schema Information
#
# Table name: crew_categories
#
#  id         :integer          not null, primary key
#  title      :string(255)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class CrewCategory < ActiveRecord::Base
  has_many :users
  attr_accessible :title
end
