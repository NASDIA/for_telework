
# ----------------------------------------
# 
# ----------------------------------------
Add-Type -AssemblyName System.Windows.Forms

# ----------------------------------------
# Private
# ----------------------------------------
function p_str_send_key( $str_data )
{
	$char_data_array = $str_data.ToCharArray()
	
	foreach ( $char_data in $char_data_array )
	{
		[System.Windows.Forms.SendKeys]::SendWait( $char_data )
		sleep -m 500
	}
}

# ----------------------------------------
# Main
# ----------------------------------------
for( $loop = 0; $loop -lt 1; ++$loop )
{
	Invoke-Item C:\Windows\notepad.exe
	sleep 3
	
	p_str_send_key( "Hello`nWorld." );
	sleep 1
	
	taskkill -F -IM notepad.exe
}

# ----------------------------------------
# memo
# ----------------------------------------
# Get-ExecutionPolicy
# Set-ExecutionPolicy RemoteSigned
# Set-ExecutionPolicy Restricted
# Set-ExecutionPolicy RemoteSigned -Scope Process -Force