class NoteSerializer < ActiveModel::Serializer
  attributes :id, :name, :description, :day_id, :type_id
  belongs_to :day
  belongs_to :type
end
