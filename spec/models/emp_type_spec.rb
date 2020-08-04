# == Schema Information
#
# Table name: emp_types
#
#  id             :bigint           not null, primary key
#  name(雇用形態) :string(255)      not null
#
require 'rails_helper'

RSpec.describe EmpType, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
