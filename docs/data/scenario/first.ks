*start
[cm]
[title name="NBA選手への道"]
[hidemenubutton]
[wait time=100]
[freeimage layer="base"]
[position left="10" top="10" width="1000" height="550"  frame="none" ]
[deffont size="40"]
[bg storage=juniorhighschool.jpg]

[font bold="true" size="60"]「NBA選手への道」[l][r]
;　プレイヤーの名前を入力させる。ティラノスクリプトで
;　ボタンの画像が出てこない。指定方法合ってるはずだけど
[r]
[font bold="false" size="40"]あなたの名前を教えてください[l][r]
[edit name="f.player_name" left="20" top="300" width="320" height="48" size="40" initial="慶応太郎" maxchars="16" ]
[button graphic="config\arrow_next.png" target="*check_name" x="30" y="380"]
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
[link target="*tag_tokyo"]→東京第一中学校[endlink][r]
[link target="*tag_kyoto"]→埴輪中学校[endlink][r]
[link target="*tag_okinawa"]→海人体育中学校[endlink][r]
[s]

*tag_tokyo
[cm]
[position left="10" top="450" width="1260" height="266"  frame="none" ]

東京第一中学校に入学した！！[r]
あなたはこれからプロバスケットボール選手をめざして練習を重ねていくことになります。[p]
やあ、[emb exp="f.player_name"]くんだね！[r]
私はこの学校のバスケ部の顧問です。[p]
話は聞いているよ。うちのバスケ部に入りたいんだよね。うちは誰でも歓迎しているよ。[r]
これからの君の活躍に期待しているよ。じゃあ、あとは放課後でね。[p]

[iscript]
f.drive= 0
f.pass= 0
f.shoot= 0
f.post= 0
f.defence= 0
[endscript]

[bg storage="gym.jpg" ]
~放課後~

[l]

[jump target=*highschool]

*tag_kyoto
[cm]
[position left="10" top="450" width="1260" height="266"  frame="none" ]

埴輪中学校に入学した！！[r]
あなたはこれからプロバスケットボール選手をめざして練習を重ねていくことになります。[p]
やあ、[emb exp="f.player_name"]くんだね！[r]
私はこの学校のバスケ部の顧問です。[p]
話は聞いているよ。うちのバスケ部に入りたいんだよね。うちは誰でも歓迎しているよ。[r]
これからの君の活躍に期待しているよ。じゃあ、あとは放課後でね。[p]

[iscript]
f.drive= 0
f.pass= 0
f.shoot= 0
f.post= 0
f.defence= 0
[endscript]

[bg storage="gym.jpg" ]
~放課後~


[l]

[jump target=*highschool]

*tag_okinawa
[cm]
[position left="10" top="450" width="1260" height="266"  frame="none" ]

海人中学校に入学した！！[r]
あなたはこれからプロバスケットボール選手をめざして練習を重ねていくことになります。[p]
やあ、[emb exp="f.player_name"]くんだね！[r]
私はこの学校のバスケ部の顧問です。[p]
話は聞いているよ。うちのバスケ部に入りたいんだよね。うちは誰でも歓迎しているよ。[r]
これからの君の活躍に期待しているよ。じゃあ、あとは放課後でね。[p]

[iscript]
f.drive= 0
f.pass= 0
f.shoot= 0
f.post= 0
f.defence= 0
[endscript]

[bg storage="gym.jpg" ]
~放課後~


[l]
[jump target=*highschool]

*highschool
[cm]
高校に進学した！！
[l][r]

[link target="*college"]→アメリカの大学に進学する[endlink][r]
[link target="*japan" ]→日本でプレイを続ける[endlink][r]
[s]

*college
[cm]
[link target="*NBA" ]→NBAドラフトに選ばれた！！[endlink][r]
[link target="*Gleage" ]→Gリーグに呼ばれた[endlink][r]
[s]
*japan

[link target="*camp" ]


*NBA

*Gleage

*camp

[jump target=*start]