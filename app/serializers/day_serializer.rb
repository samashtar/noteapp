class DaySerializer < ActiveModel::Serializer
  attributes :id, :name, :date
  has_many :notes
end
