■OGP(Open Graph Protocol)設定について
OGPタグを有効にすることで
・TOPページ
・商品詳細ページ
・カテゴリページ
・ページ詳細設定フリーページ
・LPページ
にてOGPタグを設置することができます。

■OGPタグを有効にする手順
1. OGP用のメイン画像をアップロード
   メイン画像(TOPページ等)アップロード先: upload/ogp_image/top/main(.jpg|.png|.gif)
   例: upload/ogp_image/top/main.jpg
   
   メイン画像が存在しない場合、全てのページでOGPタグが設置されません。
   まずはメイン画像をアップロードしてください。
    
2. templates/テンプレートディレクトリ名/site_frame.tpl
   smp/templates/テンプレートディレクトリ名/site_frame.tpl
   の meta タグ付近に ogp.tpl を読み込む記述を追加
   ※ pr_default ディレクトリ直下の site_frame.tpl を参考に以下のタグを挿入してください
   
   <!--{include file='../../ogp_template_files/ogp.tpl'}-->

3. 優先するOGP画像をアップロード(任意)
   商品詳細ページ、カテゴリページ、ページ詳細設定フリーページ、LPページで
   優先して設定したいOGP画像がございましたら下記を参考にアップロードして下さい。

■OGP用優先画像アップロード先
・商品詳細
    表示優先順位: upload/ogp_image/product/【商品ID】(.jpg|.png|.gif) ＞ 商品の「詳細-メイン拡大画像」 ＞ 商品の「詳細-メイン画像」
    例: upload/ogp_image/product/27.jpg

・カテゴリーページ
    表示優先順位: upload/ogp_image/category/【カテゴリID】(.jpg|.png|.gif) ＞ メイン画像
    例: upload/ogp_image/category/13.png

・ページ詳細設定フリーページ(PC)
    表示優先順位: upload/ogp_image/free_page_pc/【http://■■/user_data/●●.phpの●●部分】(.jpg|.png|.gif) ＞ メイン画像
    例: upload/ogp_image/free_page_pc/access_map.jpg

・ページ詳細設定フリーページ(スマートフォン)
    表示優先順位: upload/ogp_image/free_page_smp/【http://■■/smp/user_data/●●.phpの●●部分】(.jpg|.png|.gif) ＞ メイン画像
    例: upload/ogp_image/free_page_smp/access_map.jpg

・LP
    表示優先順位: upload/ogp_image/lp/【LPフォームキー】(.jpg|.png|.gif) ＞ メイン画像
    例: upload/ogp_image/lp/rice.jpg
