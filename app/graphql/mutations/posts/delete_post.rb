class Mutations::Posts::DeletePost < GraphQL::Function

  argument :id, types.ID

  type types.Boolean

  def call(_, args, _)
    post = Post.find(args[:id])
    !!post.destroy
  end

end
