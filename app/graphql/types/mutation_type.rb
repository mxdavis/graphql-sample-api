Types::MutationType = GraphQL::ObjectType.define do
  name "Mutation"

  # TODO: Remove me
  field :testField, types.String do
    description "An example field added by the generator"
    resolve ->(obj, args, ctx) {
      "Hello World!"
    }
  # query to call this Mutation with id and full name being returned after user created
  # mutation {
  #   createUser(first_name:"Jim", last_name: "Smith", birth_year: 1900, is_alive: false) {
  #    id
  #    full_name
  #  }
  # }

  field :createUser, function: Mutations::Users::CreateUser.new
end
