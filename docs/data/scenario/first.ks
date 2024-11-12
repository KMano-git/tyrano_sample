*start
[cm]
[title name="NBA選手への道"]
[hidemenubutton]
[wait time=200]
[freeimage layer="base"]

[bg storage=juniorhighschool.jpg]
「NBA選手への道」」[l][r]
;　プレイヤーの名前を入力させる。ティラノスクリプトで
あなたの名前を教えてください[l][r]
[edit name="f.player_name" left="380" top="350" width="260" height="40" size="30" initial="慶応太郎"]
[button graphics=arrow_next.png target="*select_school" x="440" y="430"]
[s][r]

*select_school
[commit]
[cm]

進学する中学校を選択してください。[l][r]
[r]
[link target=*tag_tokyo]東京第一中学校[endlink][r]
[link target=*tag_kyoto]埴輪中学校[endlink][r]
[link target=*tag_okinawa]海人体育中学校[endlink][r]
[s]

*tag_tokyo
[cm]
東京第一中学校に入学した！！
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

[jump target=*start]