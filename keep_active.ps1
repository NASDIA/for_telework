
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

# �\�[�X�R�[�h�̐��� ---------------------------
# 1.���������N������
# 2.�K���ȕ���������
# 3.���������I������
# 1.�`3.��莞�̊ԁA�J��Ԃ�

# for����C++�Ȃ� for (int loop = 0; loop < 2; ++loop) 
# sleep �͕b�P��, sleep -m ��msec.
# �莞8���ԂȂ�28,800�b�B1�񃋁[�v��10�b�Ȃ̂ŁA���[�v�񐔂�2,880�ɂ���. ���̕ӂ͂��D�݂ŁB

# �N�����@ ---------------------------
# �{�t�@�C����K���ȏꏊ�ɕۑ�����B
# powershell���N������B
# �{�t�@�C�������s����B�ȉ��AD�����ɒu�������̎��s��.
# powershell -ExecutionPolicy RemoteSigned -File "D:\keep_active.ps1"
# ���~���@�� ctrl+c

# �悢�e�����[�N���C�t���I
