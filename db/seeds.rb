# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
recovery_item1 = RecoveryItem.create(
        item_name: '睡眠',
        item_comentary: '一日６~８Hの睡眠は翌日の体調をベストコンディションに整えてくれます',
        item_score: 5)
recovery_item1.image_item.attach(io: File.open(Rails.root.join('app/assets/images/sleep.jpeg')), filename: 'sleep.jpeg')

recovery_item2 = RecoveryItem.create(
        item_name: '笑う',
        item_comentary: '笑うと血糖値の上昇を抑えストレスを軽減する効果があることが研究によって証明されています',
        item_score: 3)
recovery_item2.image_item.attach(io: File.open(Rails.root.join('app/assets/images/smile.jpeg')), filename: 'smile.jpeg')

recovery_item3 = RecoveryItem.create(
        item_name: 'ポモドーロテクニック',
        item_comentary: '25分集中5分休憩を行う作業法。疲れをためず業務効率向上にもつながります',
        item_score: 4)
recovery_item3.image_item.attach(io: File.open(Rails.root.join('app/assets/images/clock.jpg')), filename: 'clock.jpeg')

recovery_item4 = RecoveryItem.create(
        item_name: 'ストレッチ',
        item_comentary: '長時間同じ姿勢でいると血流が悪くなり身体的負担につながります。適度に体を動かしましょう',
        item_score: 2)
recovery_item4.image_item.attach(io: File.open(Rails.root.join('app/assets/images/stretch.jpg')), filename: 'stretch.jpeg')

