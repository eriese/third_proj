# == Schema Information
#
# Table name: encounters
#
#  id         :integer          not null, primary key
#  partner_id :integer
#  fluid      :boolean
#  notes      :text
#  self_risk  :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  took_place :date
#

require 'spec_helper'

describe Encounter do
  pending "add some examples to (or delete) #{__FILE__}"
end
