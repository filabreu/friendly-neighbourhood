class LinkSerializer < ActiveModel::Serializer
  attributes :url, :code, :message, :title, :description, :main_image, :duration
end
