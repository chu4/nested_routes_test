# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
#

def random_id
  [1,2,3,4,5].sample
end

FactoryBot.create_list(:user, 30)

300.times { FactoryBot.create(:post, user: User.find(random_id)) }
1200.times { FactoryBot.create(:comment, user: User.find(random_id), post: Post.find(random_id)) }