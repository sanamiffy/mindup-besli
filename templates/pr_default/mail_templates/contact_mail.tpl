　※本メールは自動配信メールです。
　等幅フォント(MSゴシック12ポイント、Osaka-等幅など)で
　最適にご覧になれます。

┏━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┓
　※本メールは、
　<!--{$tpl_shopname}-->より、お問い合わせをされた方に
　お送りしています。
　もしお心当たりが無い場合は、このままこのメールを破棄して
　ください。
　またその旨、<!--{$tpl_infoemail}-->まで
　ご連絡いただければ幸いです。
┗━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┛

<!--{$arrForm.name01}-->様

以下のお問い合わせを受付致しました。
確認次第ご連絡いたしますので、少々お待ちください。

■お名前　：<!--{$arrForm.name01}--> <!--{$arrForm.name02}--> （<!--{$arrForm.kana01}--> <!--{$arrForm.kana02}-->）様
■郵便番号：<!--{if $arrForm.zip01 && $arrForm.zip02}-->〒<!--{$arrForm.zip01}-->-<!--{$arrForm.zip02}--><!--{/if}-->

■ご住所　：<!--{$arrPref[$arrForm.pref]}--><!--{$arrForm.addr01}--><!--{$arrForm.addr02}-->
■電話番号：<!--{$arrForm.tel01}-->-<!--{$arrForm.tel02}-->-<!--{$arrForm.tel03}-->
<!--{if $arrForm.contact_type}-->
■お問い合わせ種別：<!--{$arrForm.contact_type}-->
<!--{/if}-->
■お問い合わせの内容
<!--{$arrForm.contents}-->

<!--{if false}-->■送信元IP：<!--{$arrForm.ip}--><!--{/if}-->
