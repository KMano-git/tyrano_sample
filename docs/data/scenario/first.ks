*start
[cm]
[title name="NBA選手への道"]
[hidemenubutton]
[wait time=100]
[freeimage layer="base"]

[bg storage=juniorhighschool.jpg]
[font bold="true" size="60"]「NBA選手への道」[l][r]
;　プレイヤーの名前を入力させる。ティラノスクリプトで
;　ボタンの画像が出てこない。指定方法合ってるはずだけど
[r]
[font bold="false" size="40"]あなたの名前を教えてください[l][r]
[edit name="f.player_name" left="380" top="350" width="260" height="40" size="30" initial="慶応太郎"]
[button graphic="config\arrow_next.png" target="*check_name" x="440" y="430"]
[s][r]

*check_name
[commit]
[cm]
[emb exp="f.player_name"]
でよろしいですか？[r]
[link target=*tag_junior]はい[endlink][r]
[link target=*start]いいえ[endlink][r]
[s]

*tag_junior
[cm]
進学する中学校を選択してください。[l][r]
[r]
[link target="*tag_tokyo"]東京第一中学校[endlink][r]
[link target="*tag_kyoto"]埴輪中学校[endlink][r]
[link target="*tag_okinawa"]海人体育中学校[endlink][r]
[s]

*tag_tokyo
[cm]
東京第一中学校に入学した！！[r]
やあ、[emb exp="f.player_name"]くんだね！
[iscript]
f.drive= 0
f.pass= 0
f.shoot= 0
f.post= 0
f.defence= 0
[endscript]

[l]

[jump target=*highschool]

*tag_kyoto
[cm]
埴輪中学校に入学した！！

[l]

[jump target=*highschool]

*tag_okinawa
[cm]
海人体育中学校に入学した！！

[l]
[jump target=*highschool]

*highschool
[cm]
高校に進学した！！
[l]

[link target="*college"]アメリカの大学に進学する[endlink][r]
[link target="*japan" ]日本でプレイを続ける[endlink][r]
[s]

*college

[link target="*NBA" ]NBAドラフトに選ばれた！！[endlink][r]
[link target="*Gleage" ]Gリーグに呼ばれた[endlink][r]
[s]
*japan

[link target="*camp" ]


*NBA

*Gleage

*camp

[jump target=*start]