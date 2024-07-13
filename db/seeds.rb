manuals = [
{ title: '『ブランドを知ろう』', content: 'ブランドとは企業や製品、サービスが持つ独自の価値や個性を表現する総合的な概念です。
    自社のHPや資料を通じてブランドコンセプトを知りましょう。（先輩社員が直接資料を元に伝えるように）

    ① ブランドが生まれた背景とは？
    ・ブランドが誕生するまでの経緯を知りましょう。

    ② ブランド名にはどのような意味がこめられていのか？
    ・ブランド名に込められた意味やメッセージ、由来を理解しましょう。

    ③ ブランドが何を大切にし、今後どこへ向かっているのか？
    ・ブランドのミッション、ビジョン、そして将来の目標を知りましょう。

    ④ ブランドのターゲット層はどこなのか？
    ・ブランドが対象としている顧客層や市場セグメントを把握しましょう。

    ⑤ ブランドの製品ラインアップと特徴は？
    ・主力製品やサービス、その特徴や強みを理解しましょう。

    これらのポイントを押さえてブランドコンセプトを理解することで、
    他ブランドとの違いを理解でき、お客様に自社ブランドの価値を提供できます。', category: '1. ブランドを知ろう' },
{ title: '接客の基本', content: 'ここに内容を記述', category: '2. 試着会' },
{ title: '接客の基本', content: 'ここに内容を記述', category: '3. 基本的な敬語を知ろう' },
{ title: '接客の基本', content: 'ここに内容を記述', category: '4. 素材を知ろう' },
{ title: '接客の基本', content: 'ここに内容を記述', category: '5. お洋服を知ろう' },
{ title: '接客の基本', content: 'ここに内容を記述', category: '6. 接客の基本①' },
{ title: '接客の基本', content: 'ここに内容を記述', category: '7. 接客の基本②' },
{ title: '接客の基本', content: 'ここに内容を記述', category: '8. レジまわりの操作' }
]

manuals.each do |manual_attributes|
    manual = Manual.find_or_initialize_by(title: manual_attributes[:title], category: manual_attributes[:category])
    manual.content = manual_attributes[:content]
    manual.save
end


# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
