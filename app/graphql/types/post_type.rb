Types::PostInputType = GraphQL::InputObjectType.define do
  name "PostInputType"
  description "Properties for creating or updating a Post"

  argument :id, types.ID
  argument :body, types.String
end

Types::PostType = GraphQL::ObjectType.define do
  name "PostType"
  description 'Represents a post'

  field :body, types.String
  field :id, !types.ID

  field :user, Types::UserType

  field :errors, types[types.String], "Reasons this object could not be saved" do
  resolve ->(obj, _, _) {obj.errors.to_a}
end

end
