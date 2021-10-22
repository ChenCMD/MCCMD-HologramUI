# Example/About
このdatapackはHologramUIの実装例です。

## 要件
座標`10,10,10` ~ `15,13,10`にHologramUIを利用したメニューを作りたい。  
メニューは`10,10,10` ~ `15,12,14`の範囲内の全プレイヤーが利用できるものとする

### メニューの状態推移
```
[Menu1] (デフォルト)
 ⇣   ⇡
[Menu2]
```

#### Menu1
中央下に`OPEN`と書かれた選択可能なホログラムのみが配置されている。  
そのホログラムを選択すると`Menu2`に推移する。

#### Menu2
中央左から順に`Hoge`, `Fuga`, `Piyo`と書かれた選択可能なホログラムと中央下に`CLOSE`と書かれた選択可能なホログラムが配置されている。  
上のホログラムは選択すると選択したプレイヤーが選択したホログラムの文字をチャットに発言する。  
下のホログラムは選択すると`Menu1`に推移する。