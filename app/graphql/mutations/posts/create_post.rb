class Mutations::Posts::CreatePost < GraphQL::Function

  argument :post, Types::PostInputType

  type Types::PostType

  def call(_, args, _)
    Post.create args[:post].to_h
  end

end
