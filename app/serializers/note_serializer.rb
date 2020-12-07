class NoteSerializer < ActiveModel::Serializer
  attributes :id, :author, :title, :content, :image_url, :votes, :user_id 
end
