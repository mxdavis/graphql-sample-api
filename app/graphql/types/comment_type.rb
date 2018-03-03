Types::CommentInputType = GraphQL::InputObjectType.define do
  name "CommentInputType"
  description "Properties for creating or updating a Comment"

  argument :id, types.ID
  argument :body, types.String
end

Types::CommentType = GraphQL::ObjectType.define do
  name "CommentType"
  description 'Represents a commentt'

  field :body, types.String
  field :id, !types.ID

  field :user, Types::UserType

  field :errors, types[types.String], "Reasons this object could not be saved" do
    resolve ->(obj, _, _) {obj.errors.to_a}
  end

end
