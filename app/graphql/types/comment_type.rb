Types::CommentType = GraphQL::ObjectType.define do
  name "CommentType"
  description 'Represents a commentt'

  field :body, types.String
  field :id, !types.ID

  field :user, Types::UserType

end
