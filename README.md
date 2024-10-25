■サービス概要
アパレル業界で働く方向けに、新人育成用のマニュアルを提供するサービスです。
このサービスでは、育成する側とされる側の両方が、自分のスマホやパソコンでマニュアルを簡単に確認できます。
マニュアルには、育成の手順が順番に書かれているので、何を学ぶべきかが一目でわかります。学習が進むごとに、完了した内容がCanvasグラフのような視覚的なグラフに反映される為、進捗管理ができます。
育成ではコミュニケーションが最も大切な為、コメントや「いいね」機能を提供しています。これにより、日々の振り返りや、直接言えないことも気軽に投稿できる環境を作ります。

■ このサービスへの思い・作りたい理由
私自身、過去アパレルの店舗で販売スタッフをしておりました。
新人育成に携わる際、マニュアルがなく、人手不足という理由もあり育成の為の教育も疎かでした。
現場ではマニュアルを作成する知識もなかったため、手探りで進める状況になり、育成に苦戦することが多々ありました。
過去の経験を通じて、現状を変えたいという強い思いが生まれました。現場で働く方々がもっと豊かになってほしいという願いを込めて、このサービスを作りたいと思いました。

■ ユーザー層について
・ユーザー層
→アパレルの現場で新人育成に悩む方々

・理由
→自分自身が新人育成に苦戦した経験があるため、同じように育成に悩んでいる方々の手助けになればと考えたからです。

■　サービスの利用イメージ
・利用法法
1.アパレルショップの新人や教育担当者がサービスに登録。
2.マニュアルは章やセクションごとに分かれており、ステップバイステップで学ぶことができます。
3.学習の進捗を追跡できる機能があり、新人の学習状況をリアルタイムで把握できます。
4.新人が質問や意見を投稿でき、教育担当者がフィードバックできる機能を提供します。

・得られる価値
1.効率的な学習: ステップバイステップのマニュアルで、新人が効率的に業務を学べます。
2.一貫性のある教育: 全ての新人が同じマニュアルを使うことで、一貫性のある教育を実現します。
3.コミュニケーション強化:　投稿機能を通じて、新人と教育担当者のコミュニケーションが強化されます。

■ ユーザーの獲得について
1.SNSやプログラミングコミュニティ、ブログでの宣伝
→上記プラットフォームを活用し、特定のユーザー層を記載した文言とアプリのリンクを貼ることで、ニーズのある方に訴求します。

2.個人的なアプローチ
→ 過去働いていた店舗の方やアパレルで働いている友人に向けて、直接紹介する方法を活用します。

3.ユーザーの声を活用
→成功事例の紹介: アプリを使って成功したユーザーのストーリーをSNSでシェアしさらなるユーザー獲得を目指します。

■ サービスの差別化ポイント・推しポイント
・差別化ポイント
　アパレル業界に絞って作成している点
・推しポイント
1.進捗追跡機能 学習の進捗をリアルタイムで追跡できる機能を提供しており、教育担当者が新人の学習状況を簡単に把握できます。これにより、タイムリーなサポートやアドバイスが可能となり、教育効果が高まります。
2.投稿機能　新人が質問や意見を投稿でき、教育担当者がフィードバックを提供する機能を備えています。この機能により疑問点をすぐに解決することができ、且つコミュニケーションの向上が見込めます。

■ 機能候補
・MVPリリース
1.ユーザー登録機能
2.マニュアル閲覧機能
3.進捗管理機能
4.質問・意見投稿機能
5.フィードバック機能(返信機能)

・本リリース
1.通知機能(コメントやフィードバックがあった際に通知を受け取る機能。)
2.「いいね」機能(コメントに対して「いいね」をする機能。)

■ 機能の実装方針予定
・通知機能 →WebSocketやPush通知を使用してリアルタイムで通知を受け取る仕組みを考えています。
・「いいね」機能 →Ajaxを使って非同期で「いいね」操作を行う予定です。

### 画面遷移図
Figma：https://www.figma.com/design/uqE5dc2VL1ivu5E2gZt7nz/%E7%84%A1%E9%A1%8C?node-id=0-1&t=jUwmAMrSuvQcbNtz-0

### READMEに記載した機能
- [✔️] ユーザー登録機能
- [✔️] ログイン機能
- [✔️] パスワード変更機能
- [✔️] メールアドレス変更機能
- [✔️] マニュアル閲覧機能
- [✔️] 質問・意見投稿機能
- [✔️] フィードバック機能(返信機能)
- [✔️] 通知機能
- [✔️] 「いいね」機能

### メールアドレス・パスワード変更確認項目
直接変更できるものではなく、一旦メールなどを介して専用のページで変更する画面遷移になっているか？
- [✔️] メールアドレス
- [✔️] パスワード

### ER図
[![Image from Gyazo](https://i.gyazo.com/8aeb141fdf7bf916c98d0142d2026fe4.png)](https://gyazo.com/8aeb141fdf7bf916c98d0142d2026fe4)
