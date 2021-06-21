module ApplicationHelper

    def default_meta_tags
        {
            site: 'イケメンタル',
            title: 'イケメンタル',
            reverse: true,
            charset: 'utf-8',
            description: 'イケメンタルはメンタルヘルスマネジメントを学ぶきっかけを提供するアプリです。クイズ形式で問題を解きながら出世街道を駆け上がりましょう！',
            keywords: 'メンタルヘルスマネジメント,メンタルヘルス,プログラミング,メンタル,ストレスケア',
            canonical: request.original_url,
            separator: '|',
          og: {
            site_name: :site,
            title: :title,
            description: :description,
            type: 'website',
            url: request.original_url,
            image: image_url('twitter-top.png'),
            local: 'ja-JP',
          },
          twitter: {
            # card: 'summary_large_image',
            # url: 'https://buka-mental.herokuapp.com/',
            # description: 'イケメンタルはメンタルヘルスマネジメントを学ぶきっかけを提供するアプリです。クイズ形式で問題を解きながら出世街道を駆け上がりましょう！',
            # title: 'イケメンタル',
            card: 'summary_large_image',
            site: '@kosuke54177851',
            image: image_url('twitter-top.png'),
          }
        }
      end
end
