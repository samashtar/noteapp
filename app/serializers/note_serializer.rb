class NoteSerializer < ActiveModel::Serializer
  attributes :id, :name, :description, :day_id
  belongs_to :day
end
