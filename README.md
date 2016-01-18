# dmm_playlisitnamechange
DMM.R18の月額動画をダウンロードした後、DMM PlayerのPlaylistにあるムービーのタイトルを日本語名に変更するOSX用のスクリプト

# 対象のディレクトリ

"#{ENV["HOME"]}/Movies/DMMPlayer/playlist/"

# 挙動

英数字のwmvファイルを対象にして、該当するファイルのIDを抜き取ってDMMのサイトにアクセスし、タイトルタグからファイル名設定するだけです。
