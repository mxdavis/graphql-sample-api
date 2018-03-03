class Mutations::Users::DeleteUser < GraphQL::Function

  argument :id, types.ID

  #what the call returns
  type types.Boolean

  # sample query for delete user
  # mutation {
  #   deleteUser(id: 6) {}
  # }

  def call(obj, args, ctx)
    user = User.find(args[:id])
    !!user.destroy
  end

end
