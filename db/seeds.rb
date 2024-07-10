Manual.create(title: '販売員の心得', content: 'ここに内容を記述', category: '1. ブランドを知ろう')
Manual.create(title: '接客の基本', content: 'ここに内容を記述', category: '2. 基本的な敬語を知ろう')
Manual.create(title: '接客の基本', content: 'ここに内容を記述', category: '3. 素材を知ろう')
Manual.create(title: '接客の基本', content: 'ここに内容を記述', category: '4. お洋服を知ろう')
Manual.create(title: '接客の基本', content: 'ここに内容を記述', category: '5. 接客の基本①')
Manual.create(title: '接客の基本', content: 'ここに内容を記述', category: '6. 接客の基本②')
Manual.create(title: '接客の基本', content: 'ここに内容を記述', category: '7. レジまわりの操作')


# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
