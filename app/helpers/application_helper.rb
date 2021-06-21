module ApplicationHelper

    def default_meta_tags
        {
          site: 'イケメンタル',
          reverse: true,
          charset: 'utf-8',
          description: 'イケメンタルはメンタルヘルスマネジメントを学ぶきっかけを提供するアプリです。クイズ形式で問題を解きながら出世街道を駆け上がりましょう！',
          keywords: 'メンタルヘルスマネジメント,メンタルヘルス,プログラミング,メンタル,ストレスケア',
          canonical: request.original_url,
          og: {
            site_name: :site,
            title: 'イケメンタル',
            description: 'イケメンタルはメンタルヘルスマネジメントを学ぶきっかけを提供するアプリです。クイズ形式で問題を解きながら出世街道を駆け上がりましょう！',
            type: 'website',
            url: 'https://buka-mental.herokuapp.com/',
            image: image_url('twitter-top.png'),
            local: 'ja-JP',
          },
          twitter: {
            card: 'summary_large_image',
            url: 'https://buka-mental.herokuapp.com/'
            description: 'イケメンタルはメンタルヘルスマネジメントを学ぶきっかけを提供するアプリです。クイズ形式で問題を解きながら出世街道を駆け上がりましょう！',
            title: 'イケメンタル',
            site: '@kosuke54177851',
            image: image_url('twitter-top.png'),
          }
        }
      end
end
