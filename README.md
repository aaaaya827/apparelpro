プロジェクト名：『Apparelpro』
---

[![Image from Gyazo](https://i.gyazo.com/142233a92ae32c213a4a41ae2786fe0b.jpg)](https://gyazo.com/142233a92ae32c213a4a41ae2786fe0b)

サービス概要
---
アパレル業界で働く方向けに、新人育成用のマニュアルを提供するサービスです。
スマホやPCで簡単に確認でき、育成手順がわかりやすく記載されています。進捗状況は視覚的なグラフで管理可能です。質問投稿機能やコメント・「いいね」機能で、円滑なコミュニケーションと振り返りをサポート出来るサービスとなっております。

サービスURL 
---
https://apparel-pro.onrender.com/

サービス開発の背景
---
私自身、過去アパレルの店舗で販売スタッフをしておりました。
新人育成に携わる際、マニュアルがなく、人手不足という理由もあり育成の為の教育も疎かでした。
現場ではマニュアルを作成する知識もなかったため、手探りで進める状況になり、育成に苦戦することが多々ありました。
過去の経験を通じて、現状を変えたいという強い思いが生まれました。現場で働く方々がもっと豊かになってほしいという願いを込めて、このWebサービスを開発しました。

主要な機能
---
▪️新人育成マニュアル一覧

▪️進捗管理機能
[![Image from Gyazo](https://i.gyazo.com/79180d3a92993c7b2f5f8a4c157e1ef2.gif)](https://gyazo.com/79180d3a92993c7b2f5f8a4c157e1ef2)
1〜20までのマニュアルが順番に表示され、各マニュアルのボタンをクリックすると質問編集画面に移動します。完了ボタンをクリックすると、進捗管理グラフが更新される仕組みになっており、学ぶ側も育成する側も進捗状況を一目で把握することができます。

▪️質問投稿機能
[![Image from Gyazo](https://i.gyazo.com/b7956ba7e0696e9074fe1feedfacf7c1.gif)](https://gyazo.com/b7956ba7e0696e9074fe1feedfacf7c1)

[![Image from Gyazo](https://i.gyazo.com/7b53edf235f7e2de25df686eef0b1fed.gif)](https://gyazo.com/7b53edf235f7e2de25df686eef0b1fed)
質問投稿機能では、1日の振り返りや質問を投稿できます。質問投稿一覧の投稿でペンのマークをクリックすると、質問の詳細画面に移動し、内容の修正や追加が可能です。

▪️コメント機能
[![Image from Gyazo](https://i.gyazo.com/252aeea28ceff901dd5ac2b1cf13a0d2.gif)](https://gyazo.com/252aeea28ceff901dd5ac2b1cf13a0d2)
質問投稿一覧の各投稿タイトルをクリックすると、質問詳細画面に移動します。質問詳細画面にはコメント投稿機能が備わっており、投稿に対してコメントを残すことで、スタッフ間のコミュニケーションを深めることができます。

その他の機能
---
▪️ユーザー機能
[![Image from Gyazo](https://i.gyazo.com/277c99954ea1c0f4db40cbfb6312f628.gif)](https://gyazo.com/277c99954ea1c0f4db40cbfb6312f628)
『名前』『メールアドレス』『パスワード』『確認用パスワード』を入力してユーザー登録を行います。
ユーザー登録後は、自動的にログイン処理が行われるようになっており、そのまま直ぐにサービスを利用する事が出来る仕様です。また、Googleアカウントを用いてGoogleログインを行う事も可能です。

▪️いいね機能
[![Image from Gyazo](https://i.gyazo.com/48180356da5b6f59757f7b7299a0c356.gif)](https://gyazo.com/48180356da5b6f59757f7b7299a0c356)
質問投稿一覧では、いいね機能を実装しており、気軽に共感や賛同を示すことができます。これによって、スタッフ同士の交流が自然と生まれ、意見交換がしやすい雰囲気を作ります。

▪️通知機能
[![Image from Gyazo](https://i.gyazo.com/984ac0a63066624c754073e1ec4b465e.gif)](https://gyazo.com/984ac0a63066624c754073e1ec4b465e)
通知機能では、コメントの返信があった際に、リアルタイムでお知らせを受け取ることができます。これにより、重要なやり取りを見逃す心配がなく、スムーズなコミュニケーションをサポートします。

▪️パスワードリセット機能・メールアドレス変更機能・アカウント削除機能
[![Image from Gyazo](https://i.gyazo.com/ab7d05b1a8969ce561bdfe6718ba1e07.gif)](https://gyazo.com/ab7d05b1a8969ce561bdfe6718ba1e07)
パスワードを忘れた場合、登録済みのメールアドレスからリセット手続きを行い、新しいパスワードを設定できます。また、アカウントに登録されたメールアドレスは、本人確認の上で簡単に変更可能です。さらに、不要になったアカウントをユーザー自身で削除できる機能も備えており、個人情報は安全に処理されます。

 技術構成について
---
使用技術
---
| カテゴリ | 技術内容 | 
|---------|---------|
| サーバーサイド   | ruby '3.2.3',Ruby on Rails 7.1.3   | 
| フロントエンド   | Ruby on Rails・JavaScript  | 
| CSSフレームワーク | Bootstrap  | 
| データベースサーバー  | PostgreSQL   | 
| 認証  | Devise, OmniAuth (Google)   | 
| 環境構築  | Docker   | 
| CI/CD  | Github Actions   | 
| デプロイ | Render   | 

### ER図
[![Image from Gyazo](https://i.gyazo.com/8aeb141fdf7bf916c98d0142d2026fe4.png)](https://gyazo.com/8aeb141fdf7bf916c98d0142d2026fe4)

### 画面遷移図
Figma：https://www.figma.com/design/uqE5dc2VL1ivu5E2gZt7nz/%E7%84%A1%E9%A1%8C?node-id=0-1&t=jUwmAMrSuvQcbNtz-0
