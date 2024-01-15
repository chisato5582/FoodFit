class Rank < ApplicationRecord
  has_many :users

  validates :rank_name, presence: true
  validates :response, presence: true

  def self.calculate_rank(user)
    new_rank = nil
    # ユーザーの正解の回答数を取得
    result_count = Result.result_count(user)

    # 　ランク一覧をデータベースから取得
    #ranks = Rank.all.order(response: :asc)
    ranks = Rank.order(response: :asc)
    ranks.each do |rank|
      if rank.response >= result_count
        new_rank = rank
        break # ユーザーのランクが見つかったらループ終了
      end
    end
    new_rank
  end
end
