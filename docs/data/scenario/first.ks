*start

[title name="NBA選手への道"]
[hidemenubutton]
[wait time=200]
[freeimage layer="base"]

[cm]
「NBA選手への道」」[l][r]
;　プレイヤーの名前を入力させる。ティラノスクリプトで
あなたの名前を教えてください[l][r]

進学する中学校を選択してください。[l][r]

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