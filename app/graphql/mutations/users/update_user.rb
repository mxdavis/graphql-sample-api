class Mutations::Users::UpdateUser < GraphQL::Function

  argument :id, types.ID
  argument :user, Types::UserInputType

  type Types::UserType

  # sample query for update user's first name
  #  mutation updateUser($user:UserInputType) {
  #    updateUser(id: 6, user: $user) {
  #      id
  #      full_name
  #    }
  #  }
  # query Variable
  #  {
  #    "user": {
  #      "first_name":"Jerry"
  #    }
  #  }

  def call(obj, args, ctx)
    user = User.find(args[:id])
    user.try :update, args[:user].to_h
    user
  end

end
