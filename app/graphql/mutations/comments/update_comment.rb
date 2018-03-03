class Mutations::Comments::UpdateComment < GraphQL::Function

  argument :id, types.ID
  argument :comment, Types::CommentInputType

  type Types::CommentType

  def call(_, args, _)
    comment = Comment.find(args[:id])
    comment.try :update, args[:comment].to_h
    comment
  end

end
