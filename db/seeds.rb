# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Member.create(
  [
    {
      first_name: '太郎',
      first_name_hiragana: 'たろう',
      last_name: 'テスト',
      last_name_hiragana: 'てすと',
      handle_name: '桃太郎',
      birthday: '1998-11-03',
      comment: 'よろしくお願いします。'
    }
  ]
)
