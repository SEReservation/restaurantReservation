class Table < ActiveRecord::Base
belongs_to :restaurant
validates_presencePof :location
validates_numericality_of :chairs


end
