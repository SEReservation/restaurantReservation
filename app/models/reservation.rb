class Reservation < ActiveRecord::Base
  belongs_to :table
  validates :time, uniqueness:  {scope: :tableid}
end
