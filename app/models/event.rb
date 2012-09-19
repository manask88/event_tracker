# == Schema Information
#
# Table name: events
#
#  id          :integer          not null, primary key
#  name        :string(255)
#  start       :time
#  end         :time
#  location_id :integer
#  description :text
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class DateValidator < ActiveModel::Validator
  def validate(record)
    unless record.ends > record.starts
      record.errors[:start] << ' date must be prior to End date!'
    end
  end
end

class Event < ActiveRecord::Base
  belongs_to :location
  validates :name, presence: true, length: {maximum: 50}
  validates :location_id, presence: true
  validates_with DateValidator
end
