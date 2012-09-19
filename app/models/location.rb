# == Schema Information
#
# Table name: locations
#
#  id          :integer          not null, primary key
#  name        :string(255)
#  description :text
#

class Location < ActiveRecord::Base
	attr_accessible :name, :description
  has_many :events
  
  validates :name, presence: true, length: {maximum: 50},
  					uniqueness: {case_sensitive: false}
  end
