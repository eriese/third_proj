# == Schema Information
#
# Table name: encounters
#
#  id         :integer          not null, primary key
#  partner_id :integer
#  fluid      :boolean
#  date       :date
#  notes      :text
#  self_risk  :integer
#  created_at :datetime
#  updated_at :datetime
#

class Encounter < ActiveRecord::Base
  attr_accessible :partner_id, :fluid, :took_place, :notes, :self_risk, :contacts_attributes
  belongs_to :partner
  has_many :contacts
  validates :partner_id, :presence => true
  accepts_nested_attributes_for :contacts, reject_if: lambda {|contact| contact[:partner_instrument].blank?}
end
