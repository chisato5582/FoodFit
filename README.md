# FoodFit

##　サービス概要
栄養についてクイズ形式で学習できるアプリ。
手軽に栄養学習ができるサービスを提供する。


## 想定されるユーザー層　
一人暮らしで自炊をしている人。
家族の食事を作る機会がある人。


## サービスコンセプト
日頃食事を作るにあたって、正しい栄養について理解している人は少ないのではないかと思います。
しかし、栄養バランスのいい食事にしたいと思っている人は多いはず。

栄養は、多くの人が知りたいというニーズがありながらも、後回しにされがちなコンテンツであると考えています。
そのような人に正しい栄養について気軽に学べる機会を提供し、心も体も健康になってもらいたい。
日常生活で使える、実用的な知識をつけられるサービスを提供したいという気持ちから、このアプリを考案しました。

現在栄養について学べるサイト・アプリは少ないです。
実際に食べた食事に対しての栄養を計測するアプリは多く存在しているようですが、
栄養について前もって学べる内容のアプリはあまり存在していなかったです。
一部栄養について学べるサイトなどもありましたが、食事作りに活かせる実用的な内容ではないことがほとんどでした。

栄養の勉強は健康的に日々を過ごす上で必要不可欠なものであり、一度学べば一生役に立つ知識となります。
しかしあまり重要視していない人が多いため、自ら学ぼうとする人は多くありません。
そういった人に栄養学習の重要性と、手軽なきっかけを提供できるアプリにしていきたいと思っています。


## 実装を予定している機能
### MVP
* 会員登録
* ログイン・ログアウト
* マイページ
    * ニックネーム
* 必要な栄養素問題（4択問題。問題回答後、テキストで解説が出る）
    * こんな体調不良、不足している栄養素は？
* 複数選択問題（問題回答後、テキストで解説が出る）
    * この栄養素はどんな食材に多く含まれている？
* 問い合わせ機能
* パスワードリセット機能
* 管理者機能
    * 問題作成・削除


### その後の機能
* ランク機能（クリアした問題数に応じてランクが上がる。プロフィールに表示される）
* googleログイン
* 献立問題（４択。一定ランク以上にならないとチャレンジできない）
    * 食卓によく並ぶ料理名が出てきて、他に何を食べ合わせで選ぶといいか？
* キャラクター機能
* グラフ機能（過去に回答した問題数と、正解率がグラフで確認できる）
* 間違えた問題の復習機能
* 栄養検索(アプリ内で、栄養について自分で調べることができる)
* 栄養検索の際のオートコンプリート機能
* SNSシェア機能（X）ランクが上がったらシェアできる
* 管理者機能
    * 問題編集


## 画面遷移図
https://www.figma.com/file/uKciynJuG35EdfLAmyhWqw/FoodFit?type=design&node-id=0%3A1&mode=design&t=sh54eIGW03hBvYtm-1

## ER図
[ER図](
https://viewer.diagrams.net/?tags=%7B%7D&highlight=0000ff&edit=_blank&layers=1&nav=1&title=FoodfitER.drawio#R7V1tc9o4F%2F01%2FkgH25iXj7yl3W2yTZtn226%2FZBRQwI2xWVmEsL%2F%2BkYyFCRJGxgaMpZnO1BaKLd97dCTfo2sZdn%2F29hGB%2BfQuGEPPsOrjN8MeGJZl1Tsd8h8tWa1Lmo69Lpggd7wuMpOCB%2Fc%2FGBfW49KFO4bhu4o4CDzszt8XjgLfhyP8rgwgFCzfV3sOvPd3nYMJ5AoeRsDjS3%2B4Yzxdl7adelL%2BCbqTKbuzWY9%2FmQFWOS4Ip2AcLN8VwTd8E%2Fg4buI9RDPgQx%2BTX%2B4AeoHIcIZTjOmTdg3rhvx7prU%2FTIJg4kEwd8MPo2BGikchqXLzDGauR828daFefCFyO3to2H0UBHh9NHvrQ4%2F6irlh3aabPb9u7IDodSX%2BoF97Xd2%2B1LH%2FaWl%2Fx3d3k%2FvWU81aX%2BUVeIvYvt%2BA%2FxLGBsIrZnViqzk9xOCJFvVCDBCOwWHXSQFxNwauT57MHpjRueeBeehG1dclU9cb34JVsMDsQuys9%2By%2BwfG3NTZoXQKTW3IxekovTq38EDeG%2Fgw8d%2BKT4xF5dHrHHoIhacstCHFcgzdObK9XiDB82yqKjfURBjOI0YpUYb8ySMUdxWzF58sEdharM92GnB0XghhHk821E%2FeQg9hDGbxlc97a6yjy6NgF3jfSBYE%2FiXz23iXUrmMUzP8H0ATiuGAeuNSiw1e47gSR8V3P6wdeQD3rBz5k1aKHc3rkH3ncfv2DYzikAX1ybibn5B%2BtjnA%2F8EOMCELorSBx1BJSZ%2FVwMI%2Fv48Fn1gwUG5MePwUYkz61z62pqD7s69i3tqRrT%2BbZBufZ%2B89ZfBuQZ332IjabuuMx9NddkjIwSPwtcKXQ%2Fhub7zpjtyNK%2BsOW9seWA%2ByM9o8vllgl89WAR7DvAwx7wcIfh5xTN%2B083s8O52dSvXx%2BZgS7rtsL52Dk%2BpPb9V82d4DgnAIIb%2Fs7plUoMKQudwZkdFTm9voJub15aW5nM%2BcjXXumLi9p%2Fo60%2BatO5abJuRWRufOjD2awhP49SOmFA0A5Cm9qCj8NhXcuTeGtCjF4U9r6VWfwNudVHGDgPf67IOB3SY8ooZOLonF5FChH4xYfZvk7hEgHxcgvNat9ZFTMNrMBgzXH2rmfxd%2BvVRLc8EEchcb%2FLOE5%2BTBAWeJzFh%2B4qVKAbgNdPSmw%2BFm8UiG6DFBQb2aQ7z3gyhk%2ByxteZoa%2FeJTO4t8GStjrZe3fkrZ%2F5fmcD6xXPEKXwfmVZvCB9%2FHf8c%2BPX5Z%2FdF%2Bf3b9%2F3YS%2FarYm7III%2B6wxOaEr7RL2YYG502CoGD8LTcG%2FNcMZcL0SOvcYgs7pfeUI2srUqzVB7ydoUaTsvAwtCIjdlDFoItltM7ig6qQtCIdF2vd1RkqK9796tN3RtF0QbTuXpm124VJ1Ytk%2Bqub6JKEb%2BfVJLnFMCX1bGEHrtUn70eBogi6IoNsXJ%2BhmCTuxZB9lONQEXbN5NWkOwnAZoCrPojMAQD2SbmuSLoakN%2BmqlyPpTG9EJSPptrS9q07SDT55Y4RWcwzHjyqQtTwQlCPrhqnJuiCyblyarBtWCTuxZB9lONRkXWvwK7cRnLl%2BlSk6g%2FurTNFf%2Bnhw9%2BKh2fJh2RnPmz8%2BY1izMnVrTdEpFC29zL8Aihb7ku%2FbVyImpkJTLdYWm4KXiUdTgMCI3PlxCkkLppURFvNiocoULhzeHF5p%2FnowPU%2BhhKwGC3SwTBnZ6HQxXykSukzpPOg9WTep2C5nHpSwyXzM%2BlrzoFKhq9SoLDYFnw9xnYOwRB5UTiioNyjrjxWdiuHPmgclajJrwNXlQaUCVfN5k18ORGfD1H7DG6PXN9ptY%2BgYHcdo3xjDjtE1jXaflrSbRtuhB92h0euwymVUt4oKqWVAjXLUv8n70VSfl%2BovnkFldTJJWOWi9o35NLcTW7AI0rbwAcLA3%2BL2ptEdGF3bGLaNbis6aBnEhoTe6UHDIF1IAW7PAhvlyN1s8i99%2FWngjqCOtZFfWkynZtEY2aX6ZvNUFG42lX4VyxDaSbB9PdG2zce1yv0ydmSwLcGuHsHNFv96VkJPnyrYlgUKyo3KVluvNCuK0i8eXrPa%2FFT9StYxpINTkzixBb9GZfMt2cosYcgNA%2BUI3Gzxixg0oxfE6BePopmtfOsdysXnCVY1n5stfrXDKAqHbIXVOgahvl4UX2t3jc6QxtfIGN%2B11NROsuBHuYHAaukEv6J4vwSfN2qVsSPLTthaOscvmbzyYbZRgBBp9B79pGt0GyqweRaUKMfmZodfuP7XAiOXvu%2FtBYVCesmOXNKUDb6cUC7p5PvKs0Ijckf%2BO%2FClkUvY3tYVia0laNVjtFXnx2ijT96z6opE2LKAQbmh2Krnk880r5daM6lXTDOpa80ksQWvmSxCiKpN5lkQoB6Zs4Rgzd25ufvi6ohlZfrwZMmIWtF90cS24GUuBMOFtx0j21pa3B3QRcXkoOfQZcbDJtVGOn0lomZ6D7V140b%2FAYDCgfP7%2B%2BC32YYr5895TU1u55AgT%2FflUECEviwvtR%2Bw935kVprYhY%2FN0zpeza94f7QCXV9lcvZ8EC7mf9if4cti8fA9bPS8TzWT330HjieQKQeEFKfBJPCBN0xKe4g2B45jLyV1boPIvVRM%2BA0xXsViB1jggBRN8cyLfyW%2BQauf9O8%2FOOz0n%2Fhy0cng7d3ZKj4bLdBrdN9UvYI%2BQOoQjKAHsPsK3%2F1Vig%2Fv6VCSoMPa%2BQKL09jxWxgs0AjGf5X4jLvQZueHXb2EXQhH4x53oS5CYLVVLR7q5Bscy5%2By7dqpTw7WLSgWifw84QxIlEPU2qFpE8B63HrMZip7a7LnLA6lsiO62Oz8kL5tdjeM7uOOxFY3j%2Bz%2F3lM0eFDmdkfAK9724me9lOXT2701EH%2BL3q907h39tf6ehOS%2Fc3UyMdmqazFZNtx5fWKyVa%2BWmJygVceyNjMgQaJG1YUHrSKnwEKryCcj9MuryKZVLUI3tYqc2EJJFTkDAtQjc6ulubsg7i6BipwpcaZkRM2QqIma2IJ%2Fq9Iqcm7YVJndhYKNml%2FEOEZFjum%2BxCpypnes0qvI1Sd24WPz82%2F1VGQFyTld1NpCwx30F3vRoJCOYe%2FoGM2mI0e%2FZsM51eTa1DqG7Av3FeoYZsV0DFPrGMkrgkjHUCEbLgsK1Bt%2FLa1jnIzQL69jMGdWhdAzTKKqT%2BhK6hjHTKOVIXN2T83dublbVsewTsbd9jXvuMGQmJ%2Bo0wycnah3r3aWXskPwlrHyA2bjOx%2BPIykLneGsKmaGvVROoZ5QMcwz0juQl%2BWV6I%2BJpjdqjyxCx%2BbD5app2PscX2VyXnPyJWeDXPydDhjOxkuyY3bkw4H%2FXEXoQh4w29rSJGiG5c%2BdFQhkleSKjPgr1jpVi0eJPKpNzEFHkx7YpvrliX3xuG5u8SOlvPjQTjkcLQt8HPtdXX7Usf%2Bp6X9Hd%2FdTe5bT0wVPr%2Bbv%2FTx4O7FQ7Plw7Iznjd%2FfMawZvGf4e9PAQIjwiSfICGUqU61Ir8k38NlCZ%2Bifc5aAo4uJNdK7Lp839i%2F8pmz2LHpGM%2BlUIqcW0RAW9xk%2Fiv792WMZx%2Fe5iwdukqFt8Wm4BcaXGdg%2B%2FA2Z3mhkDLZbhQKDanLnQEbgoCaQgwvno8VxPAiyfKsDG%2FzqlYJe72k%2FTdA1Xxu8%2Bv8ptE8%2BtEHsysOmhSJAfWIPNNXwTRvZ5Mrz8vbzRL2YdkuquQ%2BZmJTCLYxW29v8zgiN92WLB26m1k32rKs1zV6LWNoRyU9dtCNDiyj3aN1OqT%2BDd0DrWsa7X4ka5I%2FrFdM1syLL%2FWGAL3NWUFDgDA767xjQBk7sWwfVXKpuNAUjBm2Qy%2F%2BvlGgQTe0bA%2F0cHASqFV5OPg6eW09WbP5L%2FT5Z%2BMvb%2FYEB18FCZ5aXEsZJGJzbYtrqdHEsnw6kiOYfjCbUzfu7fYKiWoOG7Qvshme0GE64Mq5NRXYpcz5E7aYD7deSYJIKk6VmsQJLcGHWyv31cKcCKhyeojQNPySFk3ihZD4OfP8hC3mV7xcM4krGY0VWoIPxlYqwy%2Bn95UjcB0qLYavz%2FmNQmGLyxjdkjS2kmFSMez4MKlO68uJmSpTuvg7YHUlOf1AqtF%2Bms%2Bmfp3124TsC8ul6sJS5k5BZqVpXfzcfKxTvbS%2Bfc6vMj%2BLSYfv1NcjSK1BlapHxZpVUdleLFnv8GZm7YttqSX2Mx8L035eu0%2BUrGfJb1p3Lj%2BTUxQEeLv7IzCf3gVjSGv8Hw%3D%3D)