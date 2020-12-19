class MovieSerializer < ActiveModel::Serializer
  attributes :id, :Title, :Released, :Awards
end
