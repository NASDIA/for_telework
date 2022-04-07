
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
