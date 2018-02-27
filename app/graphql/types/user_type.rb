Types::UserType = GraphQL::ObjectType.define do
  name "UserType"

  field :first_name, types.String
  field :last_name, types.String
  field :number, types.Int
  field :street, types.String
  field :city, types.String
  field :country, types.String
  field :postcode, types.Int
  field :id, !types.ID

  field :full_name, types.String do
    description "The full name of the author"
    resolve -> (o, _, _){ [o.first_name, o.last_name].compact.join(' ')}
  end

  field :full_address, types.String do
    description "Displays full address"
    resolve -> (o, _, _){ "#{o.number} #{o.street} \n #{o.city}, #{o.postcode}"}
  end

  field :posts, types[Types::PostType], 'A list of blog posts by the user'
  field :comments, types[Types::CommentType], 'A list of comments posted by this user'


end
