module ApplicationHelper
  def default_meta_tags
    {
        site: 'FoodFit',
        title: '栄養に関する学習クイズサイト',
        reverse: true,
        charset: 'utf-8',
        description: 'FoodFitで日常で役立つ栄養学習が手軽に行えます',
        keywords: '栄養,クイズ,食事',
        canonical: request.original_url,
        separator: '|',
        og: {
            site_name: :site,
            title: :title,
            description: :description,
            type: 'website',
            url: request.original_url,
            image: image_url('ogp.jpg'),
            local: 'ja_JP'
        },

        twitter: {
            card: 'summary_large_image',
            image: image_url('ogp.jpg')
        }
    }
  end
end
