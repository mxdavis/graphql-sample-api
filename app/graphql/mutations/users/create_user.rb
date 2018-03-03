class Mutations::Users::CreateUser < GraphQL::Function

  argument :user, Types::UserInputType

  type Types::UserType

  # Query
  # mutation createUser($user:UserInputType) {
  #   createUser(user: $user) {
  #     id
  #     full_name
  #   }
  # }
  # Query Variable
  # {
  #   "user": {
  #     "first_name":"Mike",
  #     "last_name":"Smith",
  #     "street":Oak,
  #     "number": 10
  #   }
  # }

  def call(_, args, _)
    User.create args[:user].to_h
  end

end
