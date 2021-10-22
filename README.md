# MCCMD-HologramUI
ホログラム風UIを作ることが出来るライブラリ

対応バージョン: **1.17~**


---
## DL
[こちら](https://github.com/ChenCMD/MCCMD-HologramUI/releases/latest/download/MCCMD-HologramUI.zip)をDLしてください


## 依存ライブラリについて
このライブラリを使用するためには、[MCCMD-ArrayUtility v2.X](https://github.com/ChenCMD/MCCMD-ArrayUtility)が必要です。


## ホログラムの生成
### 引数
| 対象                 | 要求データ | 必須  | 型                                    | 説明         |
| :------------------- | :--------- | :---: | :------------------------------------ | :----------- |
| storage hologram_ui: | TextGroup  |   o   | [TextGroupData](#TextGroupDataの構造) | 操作する配列 |

### 使い方
```mcfunction
execute positioned <ホログラムの原点X> <ホログラムの原点Y> <ホログラムの原点Z> rotated <ホログラムのX軸の方向> 0 function hologram_ui:api/create
```

### 例
```mcfunction
# ホログラムの設計図をセット
    data modify storage hologram_ui: TextGroup set value []
    data modify storage hologram_ui: TextGroup append value {Offset:[1.5,2.0],HologramID:1,Setting:{TextInterpret:true,TextSpaceWidth:0.24,TextAlign:"Center"},Text:['{"text":"H","color":"green","font":"uniform"}','{"text":"o","color":"green","font":"uniform"}','{"text":"l","color":"green","font":"uniform"}','{"text":"o","color":"green","font":"uniform"}','{"text":"g","color":"green","font":"uniform"}','{"text":"r","color":"green","font":"uniform"}','{"text":"a","color":"green","font":"uniform"}','{"text":"m","color":"green","font":"uniform"}','','{"text":"U","color":"green","font":"uniform"}','{"text":"I","color":"green","font":"uniform"}']}
    data modify storage hologram_ui: TextGroup append value {Offset:[1.5,1.0],HologramID:2,Setting:{Selectable:false,TextSpaceWidth:0.4,TextAlign:"Center"},Text:['Item()','Item()','Item()'],Item:[{id:"minecraft:gold_ingot"},{id:"minecraft:diamond",Setting:{CMD:2,}},{id:"minecraft:emerald",Setting:{Enchant:true,NBT:{glowing:true}}}]}
# 実行座標を指定してホログラムを描画
    execute positioned 12 34 56 rotated -90 0 run function hologram_ui:api/create
```

### TextGroupDataの構造
記法: `<Key>: <型> (<デフォルト値>)`
```
TextGroup: Compound[]
├ Offset: [x: int, y: int] ([0, 0])
│ ホログラムの配置座標のオフセット
│
├ HologramID: int (null)
│ そのホログラムを識別するID, ホログラムが選択された際にも使用されます。
│
├ Setting
│ ├ Selectable: boolean (true)
│ │ そのホログラムを選択出来るか否か
│ │
│ ├ TextInterpret: boolean (false)
│ │ Textの各文字データをTextComponentとして解釈するか否か
│ │
│ ├ TextSpaceWidth: double (0.12)
│ │ Textの各文字データの間隔
│ │
│ └ TextAlign: ("Left" | "Center" | "Right") ("Left")
│    Textの水平方向の配置(左/中央/右揃え)
│
├ Text: (String | TextComponent)[]
│ 文字データ, Setting.TextInterpretが1bの場合はTextComponentを, 出なければそのまま文字を入れてください
│ 文字データに空文字("")を入力した場合、その文字データは描画されません。
│ また、文字データに"Item()"と入力した場合下記のItemデータを順次参照します
│
└ Item: Compound[] (null)
   ├ id: ItemID
   │ アイテムのid
   │
   └ Setting: Compound
      ├ CMD: int (null)
      │ CustomModelDataのエイリアス, CustomModelDataが指定されている場合そちらが優先されます。
      │
      ├ CustomModelData: int (null)
      │
      ├ Offset: double (0)
      │ アイテムの配置座標のYオフセット
      │
      ├ Enchant: boolean (false)
      │ アイテムにエンチャントエフェクトを付けるか否か
      │
      └ NBT: NBT (null)
         任意のNBTデータ itemのrootにmergeされます。
```

#### 例
```js
{
    TextGroup: [
        {
            Offset: [1.5, 2.0], // 実行座標より^ ^ ^1.5, Y+2.0
            HologramID: 1, // ホログラムの識別IDを1に設定
            Setting: {
                TextInterpret: true, // TextのInterpretを有効に
                TextSpaceWidth: 0.24, // 文字データ間の距離を0.24に uniform文字で1byte文字の場合0.12前後, 2byte文字の場合0.23前後がおすすめ
                TextAlign: "Center" // 中央揃えにする
            },
            Text: [
                '{"text":"H", "color":"green", "font":"uniform"}',
                '{"text":"o", "color":"green", "font":"uniform"}',
                '{"text":"l", "color":"green", "font":"uniform"}',
                '{"text":"o", "color":"green", "font":"uniform"}',
                '{"text":"g", "color":"green", "font":"uniform"}',
                '{"text":"r", "color":"green", "font":"uniform"}',
                '{"text":"a", "color":"green", "font":"uniform"}',
                '{"text":"m", "color":"green", "font":"uniform"}',
                '',
                '{"text":"U", "color":"green", "font":"uniform"}',
                '{"text":"I", "color":"green", "font":"uniform"}'
            ]
        },
        {
            Offset: [1.5, 1.0], // 実行座標より^ ^ ^1.5, Y+1.0
            HologramID: 2, // ホログラムの識別ID
            Setting: {
                Selectable: false, // ホログラムを選択出来ないようにする
                TextSpaceWidth: 0.4, // 文字データ間の距離を0.24に uniform文字で1byte文字の場合0.12前後, 2byte文字の場合0.23前後がおすすめ
                TextAlign: "Center" // 中央揃えにする
            },
            Text: [
                'Item()',
                'Item()',
                'Item()'
            ],
            Item: [
                {
                    id: "minecraft:gold_ingot" // 見た目は金インゴット
                },
                {
                    id: "minecraft:diamond", // 見た目はダイヤモンド
                    Setting: {
                        CMD: 2, // CustomModelDataの2番を使用する
                    }
                },
                {
                    id: "minecraft:emerald", // 見た目はエメラルド
                    Setting: {
                        Enchant: true, // エンチャントエフェクトを付ける
                        NBT: { glowing:true } // アイテムそのものを発光させる
                    }
                }
            ]
        }
    ]
}
```


## ホログラムの選択検知について
ホログラムの選択を検知するには以下の前準備が必要です。

### 当たり判定の配置
#### [実装例](Example/data/example/functions/menu/summon_interact_target.mcfunction#L8)
ホログラムを選択出来るようにするためにその実体entity tag: `HologramInteractTarget`を持つslimeをホログラムの周囲に配置する必要があります。  
下記でプレイヤーに付与されるHologramOperatorのタグの付与範囲では、どこからホログラムにカーソルを合わせて殴っても上記のスライムに判定が吸われるようにするべきです。

### 対象プレイヤーへの設定
#### [実装例](Example/data/example/functions/tick.mcfunction#L8)
ホログラムを選択する際、プレイヤーがtag: `HologramOperator`を持つ必要があります。  
このタグはホログラムを操作させたいエリア内に居る操作させたいプレイヤーに毎tick付与する必要があります。

### 選択検知イベントのハンドル
#### [実装例](Example/data/example/functions/menu/select.mcfunction#L7-L11)
ホログラムを対象プレイヤーが選択した場合、tag/function: `#minecraft:select_hologram`が選択したプレイヤーを実行者として実行されます。  
その際objective: `HologramID`に選択したホログラムの識別IDが入っているのでそれを元に操作を分岐したりすることが出来ます。


## ホログラムの削除について
#### [実装例](Example/data/example/functions/menu/1.mcfunction#L10)
ホログラムに使用されるEntityには全てtag: `Hologram`が付与されています。  
また、各entityはobjective: `HologramID`に識別IDが付与されているため下記のように"一部のホログラムのみを削除する"といったことも可能です。
```mcfunction
# 全てのホログラムを削除
    kill @e[tag=Hologram]
# IDが1~2のホログラムを削除
    kill @e[tag=Hologram,scores={HologramID=1..2}]
```


## 実装例
基本的な実装例を[Example](Example)ディレクトリに用意しました。  
参考等にどうぞ。


## 推奨利用環境
[Data-pack Helper Plus](https://github.com/SPGoding/datapack-language-server)(通称DHP)を導入した[VSCode](https://azure.microsoft.com/ja-jp/products/visual-studio-code/)での使用