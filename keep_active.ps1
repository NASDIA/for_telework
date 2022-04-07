
# ----------------------------------------
# 
# ----------------------------------------
Add-Type -AssemblyName System.Windows.Forms

# ----------------------------------------
# Private
# ----------------------------------------

# ----------------------------------------
# Main
# ----------------------------------------
for( $loop = 0; $loop -lt 2; ++$loop )
{
	Invoke-Item C:\Windows\notepad.exe
	sleep 3
	
	[System.Windows.Forms.SendKeys]::SendWait( "Hello`nWorld." )
	sleep 3
	
	taskkill -F -IM notepad.exe
	sleep 4
}

# ソースコードの説明 ---------------------------
# 1.メモ帳を起動する
# 2.適当な文字をうつ
# 3.メモ帳を終了する
# 1.～3.を定時の間、繰り返す

# for文はC++なら for (int loop = 0; loop < 2; ++loop) 
# sleep は秒単位, sleep -m でmsec.
# 定時8時間なら28,800秒。1回ループが10秒なので、ループ回数を2,880にする. その辺はお好みで。

# 起動方法 ---------------------------
# 本ファイルを適当な場所に保存する。
# powershellを起動する。
# 本ファイルを実行する。以下、D直下に置いた時の実行例.
# powershell -ExecutionPolicy RemoteSigned -File "D:\keep_active.ps1"
# 中止方法は ctrl+c

# よいテレワークライフを！
