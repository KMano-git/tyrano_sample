*start
[cm]
[title name="NBA選手への道"]
[hidemenubutton]
[wait time=100]
[freeimage layer="base"]
[position left="10" top="10" width="1000" height="550"  frame="none" ]
[deffont size="40"]
[chara_new name="teacher" storage="teacher.png" height="520" ]
[chara_new name="player1" storage="player1.png" height="520" ]
[chara_new name="player2" storage="player2.png" height="520" ]
[chara_new name="player3" storage="player3.png" height="520" ]
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
でよろしいですか？[r][r]
[link target=*tag_junior]→はい[endlink][r]
[link target=*start]→いいえ[endlink][r]
[s]

*tag_junior
[cm]
進学する中学校を選択してください。[l][r]
[r]
[link target="*tag_tokyo"]→東京第一中学校[endlink][r]
[link target="*tag_kyoto"]→埴輪中学校（未実装）[endlink][r]
[link target="*tag_okinawa"]→海人体育中学校（未実装）[endlink][r]
[s]

*tag_tokyo
[cm]
[position left="10" top="450" width="1260" height="266"  frame="none" ]

東京第一中学校に入学した！！[r][l ]
あなたはこれからプロバスケットボール選手をめざして練習を重ねていくことになります。[p]

[chara_show name="teacher" ]
やあ、[emb exp="f.player_name"]くんだね！[r][l]
私はこの学校のバスケ部の顧問です。[p]
話は聞いているよ。うちのバスケ部に入りたいんだよね。うちは誰でも歓迎しているよ。[r]
これからの君の活躍に期待しているよ。[p]じゃあ、あとは放課後でね。[p]
[chara_hide name="teacher" ]
[iscript]
f.drive= 0
f.pass= 0
f.shoot= 0
f.post= 0
f.defence= 0
[endscript]

[bg storage="gym.jpg" time="120"]
~放課後~[p]
[chara_show name="teacher" ]
早速だが、新入生の君たちにはうちの練習の見学から始めさせてもらう。[r]
明日からは基礎練を中心に始めていくので今日中にどんな雰囲気かを確認しておくこと。[p]
どうやら明日から練習が始まるみたいだ。
[p]
[iscript]
f.drive+=1 
f.pass= 1
f.shoot= 1
f.post= 1
f.defence= 1
[endscript]

[chara_hide name="teacher" wait="true" time=100]
[position left="10" top="10" width="1000" height="550"  frame="none"]
明日からはなにを重視して練習しようか[l][r]
[link target="*drive" ]→ドリブル[endlink][r]
[link target="*pass" ]→パス[endlink][r]
[link target="*shoot"]→シュート[endlink][r]
[link target="*post"]→ポストプレイ[endlink][r]
[link target="*defence"]→ディフェンス[endlink][r]
[s]

*drive
[iscript]
f.drive+=5
f.post+=1
[endscript]
[jump target="*1stmatch" ]
*pass
[iscript]
f.pass+=5
f.shoot+=1
[endscript]
[jump target="*1stmatch" ]
*shoot
[iscript]
f.shoot+=5
f.pass+=1
[endscript]
[jump target="*1stmatch" ]
*post
[iscript]
f.post+=5
f.defence+=1
[endscript]
[jump target="*1stmatch" ]
*defence
[iscript]
f.defence+=5
f.post+=1
[endscript]
[jump target="*1stmatch" ]

*1stmatch
[cm ]
[position left="10" top="450" width="1260" height="266"  frame="none" ]
「よし、早速他の人と差をつけてやる!!」

[bg storage="juniorhighschool.jpg" time="200" ]

練習が本格化する中で、優れた身体能力を持っていたあなたは
監督に今後のプレイの方針を聞くために呼び出されていた。[p]
[chara_show name="teacher" ]
「呼び出してすまない、[emb exp="f.player_name"]。[r]
君は今のところある程度のプレイはどのポジションでもできているが、
どのポジションでプレイしたいとかあるか？」[p]

[link target="*guard" ]「ガードとしてプレイしたいです」[endlink][r]
[link target="*forward" ]「フォワードとしてプレイしたいです」[endlink][r]
[link target="*center" ]「センターとしてプレイしたいです」[endlink][r]
[s]

*guard 
[iscript]
f.drive+=3
f.pass+=5
f.shoot+=2
[endscript]
[jump target="*1stmatch2" ]
*forward
[iscript]
f.drive+=2
f.drive+=5
f.shoot+=3
[endscript]
[jump target="*1stmatch2" ]
[iscript]
f.defence+=3
f.post+=5
f.shoot+=2
[endscript]
*center

[jump target="*1stmatch2" ]

*1stmatch2
[cm ]
「わかった。そのつもりでチームを組むから頼んだぞ」[p]
[chara_hide name="teacher" ]
[bg storage="gym.jpg" time="120"]
～ある日の練習中～[p]
[chara_show name="player1" ]
「よう、上手だな。1on1しようぜ」[p]
同級生のゴローが1on1を挑んできた。[l][r]
[link target="*1on1" ]→挑戦を受ける[endlink][r]
[link target="*practice" ]→一人で自主練する[endlink][r][s]
[chara_hide name="player1" ]

*1on1
[cm]
[chara_show name="player1" ]
「よっしゃ、早速かかってこい」[r][l]
[link target="*drive2" ]→ドライブで勝負する[endlink][r]
[link target="*shoot2" ]→シュートで勝負する[endlink][r]
[s]

*drive2
[cm]
あなたは、ドリブルでなんとかゴローを抜き去ろうとし、
成功したり失敗したりを繰り返しながらゴローと練習した。[p]
[iscript]
f.drive+=5
f.defence+=5
[endscript]
[jump target="*match" ]

*shoot2
あなたは、ゴローが下がったときを見計らって
シュートを積極的に狙いながらゴローと練習した。[p]
[iscript]
f.shoot+=5
f.defence+=5
[endscript]
[jump target="*match" ]

*practice
[cm]
一人で、ハンドリング練習やシュート練習を黙々と行った。[p]
[iscript]
f.drive+=4
f.shoot+=4
[endscript]
[jump target="*match" ]

*match
[cm]
ついに、新人戦の日がやってきた。[r][l]
あなたの練習してきた成果を発揮する場面だ。[p]
どんなプレーをしようか？[r]
[link target="*drive3" ]→ドライブで切り込んで勝負する[endlink][r]
[link target="*shoot3" ]→積極的なシュートで勝負する[endlink][r]
[link target="*defence3" ]→ディフェンスで相手を徹底的に止める[endlink][r]
[link target="*center3"]→ゴール下を支配する[endlink][r]
[s]

*drive3
[jump target="*end1" cond="f.drive>=10 && f.shoot>=5"]
[jump target="*end2" cond="f.drive>=10 && f.shoot<=4" ]
[jump target="*end3" cond="f.drive<=9"]
*shoot3
[jump target="*end1" cond="f.shoot>=10 && f.defence>=5"]
[jump target="*end2" cond="f.shoot>=10 && f.defence<=4" ]
[jump target="*end3" cond="f.shoot<=9"]
*defence3
[jump target="*end1" cond="f.defence>=10 && f.drive>=5"]
[jump target="*end2" cond="f.defence>=10 && f.drive<=4" ]
[jump target="*end3" cond="f.defence<=9"]
*center3
[jump target="*end1" cond="f.post>=10 && f.shoot>=5"]
[jump target="*end2" cond="f.post>=10 && f.shoot<=4" ]
[jump target="*end3" cond="f.post<=9"]

*tag_kyoto
[cm]
[position left="10" top="450" width="1260" height="266"  frame="none" ]
アップデートをお待ちください
;埴輪中学校に入学した！！[r]
;あなたはこれからプロバスケットボール選手をめざして練習を重ねていくことになります。[p]
;やあ、[emb exp="f.player_name"]くんだね！[r]
;私はこの学校のバスケ部の顧問です。[p]
;話は聞いているよ。うちのバスケ部に入りたいんだよね。うちは誰でも歓迎しているよ。[r]
;これからの君の活躍に期待しているよ。[p]じゃあ、あとは放課後でね。[p]

;[iscript]
;f.drive= 0
;f.pass= 0
;f.shoot= 0
;f.post= 0
;f.defence= 0
;[endscript]

;[bg storage="gym.jpg" ]
;~放課後~


[p]

[jump target="*start"]

*tag_okinawa
[cm]
[position left="10" top="450" width="1260" height="266"  frame="none" ]
アップデートをお待ち下さい[p]
;海人中学校に入学した！！[r]
;あなたはこれからプロバスケットボール選手をめざして練習を重ねていくことになります。[p]
;やあ、[emb exp="f.player_name"]くんだね！[r]
;私はこの学校のバスケ部の顧問です。[p]
;話は聞いているよ。うちのバスケ部に入りたいんだよね。うちは誰でも歓迎しているよ。[r]
;これからの君の活躍に期待しているよ。[p]じゃあ、あとは放課後でね。[p]
;
;[iscript]
;f.drive= 0
;f.pass= 0
;f.shoot= 0
;f.post= 0
;f.defence= 0
;[endscript]

;[bg storage="gym.jpg" ]
;~放課後~


;[l]
[jump target="*start"]

*end1
;　ここでエンディング入りで妥協かな
[cm]
あなたは、1年生大会で大きな結果を残し、無事中学校でエースとしてのプレイを続けていくこととなった。！！
[l][r]
めでたし、めでたし[p]
[jump target="*start" ]

*end2
[cm ]
あなたは、1年生大会で活躍したが、試合には勝利できなかった。[r][l]
まだまだ、練習のしがいはありそうだ。(おわり)

[p]
[jump target="*start" ]

*end3
[cm]
試合で最後にらしくないプレーをしてしまった。[r][l]
もう一度、自分に向いたプレーを考え直さなくてはいけない。[l]
[jump target="*start" ]

;[link target="*college"]→アメリカの大学に進学する[endlink][r]
;[link target="*japan" ]→日本でプレイを続ける[endlink][r]
;[s]

;*college
;[cm]
;[link target="*NBA" ]→NBAドラフトに選ばれた！！[endlink][r]
;[link target="*Gleage" ]→Gリーグに呼ばれた[endlink][r]
;[s]
;*japan

;[link target="*camp" ]


;*NBA

;*Gleage

;*camp

[jump target=*start]