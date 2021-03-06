Types::MutationType = GraphQL::ObjectType.define do
  name "Mutation"

  # query to call this Mutation with id and full name being returned after user created
  # mutation {
  #   createUser(first_name:"Jim", last_name: "Smith", birth_year: 1900, is_alive: false) {
  #    id
  #    full_name
  #  }
  # }

  field :createUser, function: Mutations::Users::CreateUser.new
  field :updateUser, function: Mutations::Users::UpdateUser.new
  field :deleteUser, function: Mutations::Users::DeleteUser.new

  field :createPost, function: Mutations::Posts::CreatePost.new
  field :updatePost, function: Mutations::Posts::UpdatePost.new
  field :deletePost, function: Mutations::Posts::DeletePost.new

  field :createComment, function: Mutations::Comments::CreateComment.new
  field :updateComment, function: Mutations::Comments::UpdateComment.new
  field :deleteComment, function: Mutations::Comments::DeleteComment.new
end
