#> core:load/load
#
#> ロード時処理
#
#
#> スコアボードが作られていなければスコアボードを初期化する
    scoreboard objectives add Count dummy {"text": "カウント"}
    execute unless score $Tick Count matches 0.. run function core:load_once