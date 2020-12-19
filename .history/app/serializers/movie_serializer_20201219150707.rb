class MovieSerializer < ActiveModel::Serializer
  attributes :id, :title, :released, :awards
end
