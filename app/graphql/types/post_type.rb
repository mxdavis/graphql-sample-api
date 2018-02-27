Types::PostType = GraphQL::ObjectType.define do
  name "PostType"
  description 'Represents a post'

  field :body, types.String
  field :id, !types.ID

  field :user, Types::UserType

end
