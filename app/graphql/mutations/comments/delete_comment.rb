class Mutations::Comments::DeleteComment < GraphQL::Function

  argument :id, types.ID

  type types.Boolean

  def call(_, args, _)
    comment = Comment.find(args[:id])
    !!comment.destroy
  end

end
