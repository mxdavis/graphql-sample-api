class Mutations::Posts::UpdatePost < GraphQL::Function

  argument :id, types.ID
  argument :post, Types::PostInputType

  type Types::PostType

  def call(_, args, _)
    post = Post.find(args[:id])
    post.try :update, args[:post].to_h
    post
  end

end
