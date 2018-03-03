class Mutations::Comments::CreateComment < GraphQL::Function

  argument :comment, Types::CommentInputType

  type Types::CommentType

  def call(_, args, _)
    Comment.create args[:comment].to_h
  end

end
