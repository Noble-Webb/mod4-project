class CommentSerializer < ActiveModel::Serializer
  attributes :id, :content, :author, :note_id, :user_id

  belongs_to :user
  belongs_to :note
end
