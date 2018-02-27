Types::QueryType = GraphQL::ObjectType.define do
  name "Query"
  # Add root-level fields here.
  # They will be entry points for queries on your schema.

  field :user, Types::UserType do
    argument :id, types.ID
    description "One User"
    resolve ->(obj, args, _) {
      User.where(id: args[:id]).first
    }
  end

  field :comment, Types::CommentType do
    argument :id, types.ID
    description "One Comment"
    resolve ->(obj, args, _) {
      Comment.where(id: args[:id]).first
    }
  end

  field :post, Types::PostType do
    argument :id, types.ID
    description "One Post"
    resolve ->(obj, args, _) {
      Post.where(id: args[:id]).first
    }
  end

  field :posts, types[Types::PostType] do
    description "All the posts in the database"
    resolve ->(_, _, _) {Post.all}
  end

  field :comments, types[Types::CommentType] do
    description "All the comments in the database"
    resolve ->(_, _, _) {Comment.all}
  end
end
