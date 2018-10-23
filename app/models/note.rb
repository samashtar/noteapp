class Note < ApplicationRecord
  belongs_to :day
  belongs_to :type
end
