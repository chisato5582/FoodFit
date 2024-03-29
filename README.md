# FoodFit
[![Image from Gyazo](https://i.gyazo.com/f342be6d5897e85b0a014a892cbd722d.png)](https://gyazo.com/f342be6d5897e85b0a014a892cbd722d)

## サービスURL
https://my-food-fit-app-3a23588e4e56.herokuapp.com/

## サービス概要
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


## 機能一覧
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
    * 問題作成・削除・編集
* ランク機能（クリアした問題数に応じてランクが上がる。プロフィールに表示される）
* グラフ機能（過去に回答した問題数と、正解率がグラフで確認できる）
* 間違えた問題の復習機能

## 使用技術
| Category | Technology Stack |
| :----: | :----: |
| フロントエンド | JavaScript |
| サーバーサイド | Ruby 3.2.2 Rails 7.0.4 |
| CSSフレームワーク | Tailwind 3系 |
| Webアプリケーションサーバー | Heroku |
| データベースサーバー | MySQL |
| VCS | GitHub |
| デザイン | Figma |
| その他 | GitHub, drawio |

## 画面遷移図
[画面遷移図](
https://www.figma.com/file/uKciynJuG35EdfLAmyhWqw/FoodFit?type=design&node-id=0%3A1&mode=design&t=sh54eIGW03hBvYtm-1)

## ER図
[ER図](
https://viewer.diagrams.net/?tags=%7B%7D&highlight=0000ff&edit=_blank&layers=1&nav=1&title=%E5%90%8D%E7%A7%B0%E6%9C%AA%E8%A8%AD%E5%AE%9A%E3%83%95%E3%82%A1%E3%82%A4%E3%83%AB.drawio#R7V1td6K6Fv41fLRL3nz5qFZnZk17p2d6z%2BuXWRlNlVskTohtPb%2F%2BJkgEDVAoKEiyVtcqhAhhP08ewt7ZQTMn67dPGGxW92gBXc3oLt4081YzDH1gWvQfK9ntS3pGb1%2BwxM4irBQVPDr%2FwrCwG5ZunQX0jyoShFzibI4L58jz4JwclQGM0etxtSfkHl91A5ZQKHicA1cs%2FdNZkNW%2BdGB3o%2FLP0Fmu%2BJX1bnhkDXjlsMBfgQV6PSqCb2SGPBI28QHiNfCgR%2BiRe4CfIdbs6YoQdqcjzZjRvydW%2B2aJ0NKFYOP4N3O0psVzn1aZPYG14zIzx040Dk9EL2dONXOCESL7rfXbBLoMKw7Dvk2zlKMHO2B23hw%2FmHRednfPXeJ9fjX%2FIPf3y4f%2Bz46xP8sLcLehfb8D79kPDUR23OrUVhu2ScBPVjT2CcAkJIfZpQUUbgIcj96ZeasH%2B64LNr4TVN%2BXrBx3cQd2aEv4ifje%2BMl5g4vve26wupQmd%2FRkbJednFn5MWwMOwxcZ%2BnR7Tm9dXbFMYY%2Bbcsd8ElYQzROaK8XiAl8ixWFxvoE0RoSvKNV%2BFFOqbCj6P1w%2FzWincHrrOKUM8NCEPJoeTh3BA%2FdCBEqgJYpoJUKFL114gD3O%2B2CwFsGmB1Dwuy6wGjzX4CXkIQFG%2BQwi05f4L4TBMZ3XHeCXMSQ9ZAHebXg5uwx%2FaO3O%2Bne2JpNGzCh%2B3q0T%2F9YdUwmyPMJpgxhl4IUqFfIwBoTtAmv48In3gwcGpNt%2F0SE0D6VBmsmq9%2FHOsTWzAnt2ZC1BGQfvhbBFtF7fXIDNVs5iwX09l2SKTCI8E6AMtH%2BB5ufgnHaEXPiYebGIwaAWdD%2B4ckiqxQ%2BG3Ap9z1A4BhtvYUvgHpo58dxtgWcafXm4cwFdl937G%2FA3PGWd%2Ftf9k6IYJ%2BDCG%2FpHdOolBi5TncBZgxl1vbuGbW9V7e285HzB6G9UJfPaf5hbvO3Xcp1XYAV07HzDw%2BsYQPxfVfSKyeAdBLeUxJ%2BHgkf1i3h%2FRYpeC%2B39duu4ANRwKG%2FoT2hzfqdH37p9NsQ%2FSu%2F%2BxArbxg90jEGH3SHmXoxYvDmGCfXM8Tr9RvCG9F7I9GDv4hfLv%2F7f1Mcc4bosWmTZ%2B5AXTUaMMThu1S%2BuQJUkG9kUO4F4MoVvsirXWGFr909Z4ivAQ3s9Xnt389t%2F9bruehRb7lrrgD4rVbwW%2FfTr8Vfn769fhm9PDm%2F%2FzPz%2F%2BmYSrArEuyLOuMSoTQb2IcTzJ1FQ8n0OdEU4lszXAPHbSC4HxHokuhLJ9BGoV6tBDpdoJM8ZZdV6ASH2KyJTpOc3bYABG0X7QR3WBD0vk5PSfX4yyfbQyXbFcm2Xbds8xM3qhPn7aNyTkxKhFGcmORQYBqIbWUCrSYlpbPBVgJdkUAPahfoXgM7cc4%2BynmoBLpjitGkDfD9V4TbPIouQAD5RHqgRLoakT7kqdYn0oXeiBom0oPc9m67SFti1sYc7zYELn7IINb5iSCdWFu6EuuKxNqqW6wto4GdOGcf5TxUYt2xxJnbGK4dr80SXQD%2BNkv0twm5vX928fr18XW42PT%2B%2FEpgxyjUrZVEZ0h07mn%2BFUh0MpZi376SYGImNeVS7WRTiGHi%2BQpgMKdX%2FrGCtAWr1gQWy3KhzRL%2BG769X1rG5%2F7jrWF5v76g9epbRxxkw8US8nntVDhXaIk84E6j0jFmrYGLEKWozh0K4GV5Ef%2BDhOzCVC2wJYgWrcjaDY9SuPDuL%2Fb7G5vv%2Fh2eLti5fTva24V78y1%2BCa6bmW3loy2ew4xHuh26yNidZrIBQxcQ5wUenT4D6wf2XIpYpPfCC%2FE52L0TfEnw7At%2FFWE7whjsYtXCx13qdWzz%2BDp2%2BOCY5WzXSX26sW9BpWNHW5zS8NuWPoMd%2BmBO1R6JMv8s7lHjKVl5wyD6Kasqe2uzpc60T0nvyuR2MxPuEpssBkeuNeEuk7pSDf%2BSTSEm3lznaC9Hwl1JKrR59JdsG7Uc1rkU%2FqIJd0lN5g24uoS7TKIqPe%2BJ887YaJjZbzrTxhNtMNCmtja0tcFMmw61ka4NJqxk0NMGNtsYTbXxkFduYhi1Kt9tAdZIJ%2F2HBDMl9WWlvvZUPWNYKFbaLGk%2FmE9pO7UFd1XGI2zAR15M23va6FYbmdp0oI36wUZfozak8s42LI12IQm0vQht2izuiV5dNYqvSNovmuSXCOV1ZGFnsVAuXU%2B0hBiBI7tNS9bIKAl9m7U5UYT0nuiQm6yQM4cqDkKP9PlkNe4pz5uvd744iN6T2k1WwO0ecft6IiGHFTab7Sj7YCAk4q5UT%2BEUpEXXWQORPlcgpAgVpHsqGwM13bwqSa899GEMRDfKlUxmzCanEnFqC3Gi6i8%2Bkag18xhL00A6Adf74gQzpegVKXrtEQ69X24uWrP0POKq0nO9L85EmwfukFjIY6hR6RsHsY%2FBSBtOWeyDPuNHhpxx7SL8ke5BYPRVln9Vut%2BANQ77TezIeQdsfZXoHw1eRTfbHGFMG50S2x5pI0sGNS%2FCkjaruesBf7v5Yn6Fz9vt4x%2B%2BNXY%2Fd3RLQP4CCUpHiUbwzSGxZCW693fsSJSqxHZ4plIsw8nqG1osx6nTvemahySolESnYO8BYoeaL4jtJItO0YQnwp9qWlqwOTzjuTOjLOMkM8o%2BYVZKZlRlrBJXa4s4o3%2BMM9D9GUgO68XOHLgfZE55lM8Nns39ezx97PTLY%2FuWCuAJJ%2BpxuhXMj6vskdQV4%2FLfob91iYrEsqPdk0hs3hz1w6ix%2BtFgt9xXZOQZ7Efcvp5IrNEV4%2BxX7bbvquH%2FwRYJn2fnbvuWe%2B0LsKDNw%2FsUWpQLyStBb3QcVjfaJei6isNGthDjsFsf4paLeQEGyCfm%2FMt4SrtLa3ftEVfDKBRGaZhQS%2FqBzmRbiG9VOPByxPzusVSy0S1LIqMbY5ullU17LN46nEjhiVef9swwTsInLi66Vljcix5bOCzVhb4YYRxQb%2Fp9TypaNHPYTQcVAg9eVGUNvB0vjdUSmZPXHXt474t73TNXKKnOcVtO%2BW1R%2BRsMdD4c36VDCaDNBJyTlgU164I5OQZS89J%2FpVDeI5gJckiEqlDmnfTd3nyYpdkUnEWHisI5vZPy1VLfx1mvDefklTzF0Mh%2FtgQ7zMOaOmaTKJx1klfYy%2BsdqySvMBkxlVYowJpN7UbGspIToMVwx5Wur5hNXaner5ORTvgO5FW6QN9PKyxLhTa%2FMydzQ4x%2FSKTwyQOxihT%2BksGtZGzF%2BEcDe31O%2Bx%2BIqvQ86XMJan3FsqyRT%2FrVB4ErUvpLhsKSobyO7wFn0lAJe8cQEw3V2oplSSOfrqvswop0vf61FY0mduK8fVTKucXJWUuir63tyyuqKcXpbBD9cffQ26ayQaIQiHnyjakGxEBMqT1kBTzuZn60mxIDMUUPWZtiIAfqqiewKfrMpIqBFKCCfM9jtS7XuRS%2B9hiIeaWrcmUTVem5mbAml4qBlGWNfNKvfGUVKX3tMRCziX04r7mVq%2BzwIRLRVaZiIGVJI52uW2qt9Ip0vf4YiHXFI3Yrv71bL%2Byir63lMZAC4Msn0KI%2FboLWG3a9VEZIFAex%2BXC6OXEQS2ovWQGvu9Xodc2Smyx6ydoUB7GU3%2BxgCtFvJlUcpAAV5Hsmq6Urz6XwtcdBrHKZnA17q1LuMm4KTiIVB6mSNdJJv638ZRUpfe1xEPuKhd1W7rKDKUR3mYqDlCWNfLoufpxE6fqHdL3%2BOIhdKF%2BzYcKe396tF3bR19byOEgB8Fsk0HQXI0Ti1THYrO7RArIa%2Fwc%3D)
[![Image from Gyazo](https://i.gyazo.com/0c2e8245011469c896621c578e0132f6.png)](https://gyazo.com/0c2e8245011469c896621c578e0132f6)