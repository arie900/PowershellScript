﻿#------------------------------------------------------------------------
# Source File Information (DO NOT MODIFY)
# Source ID: 6b116f04-7120-4cd4-a326-cc6f007ce04c
# Source File: AD-GUI-Test.psf
#------------------------------------------------------------------------
#region File Recovery Data (DO NOT MODIFY)
<#RecoveryData:
egYAAB+LCAAAAAAABABllceupAYQRfdI/MNoti2bTIP0PBJNzjnuoIGGhibnr/fzeGPJtSqVqmp1
77lfTvHst2I6uXRJf3w3c913f/3E/kR+/gKBHz++zKl+1V3aCnVbGOmn+MVwf4i+/IdXzMufw1x+
Qf/b+H0n9NPnV9vKKiKMRO2+GIY1OZb5tx4MF4Qtsn0uxi+TGwzhD7xTZbThb41iqOnUmsjUr+HS
rTMnvRaV4oOPGiUTTSEgUCl2I4o7awjhpPItvcb5/b3eJLKopZudZ4ZSUZDK9D1Uc3ZbWoV6mcEu
CTVhlO9P4SXR47TLQ4CMwQWBebv7/kru0vXmRSy30PXsBv/gWjy+Sd2MDxxxhlQ/GwIm3fokMm62
UqDGpfMMPdJl9ObxaMELceyqHgSYhIB2yIeDjC+kvETjBCYV547Uztrz/s6Ym6XoUDakH2w3U6fJ
aj7qrlm7c7w9a17pT55Jck4SfjwSBLq8irvgZAZYzcZieb0p8vsnZ+t7vAypnlR+FlHqYPbtPEXS
ykXnm8NrCG2xO8He7xFJ4vK8lNEmlhsIOGTpRITZHpFXyJKeo/SgDM8ajtuCQExcwvEhrhmZz3PN
EdWSjJoD332SEDQ2iY+irgpEu6h4I0d7AYG4UhT7QcWMPtuULR1RS98aLUhrjUmKmUVmKuTx0OCf
HhEV4YGE+FgcTmhNMaLJyZzMH0wq9oezW6kGAiUezfzcw716lfylEIqLavFyX98FLaw2umuoLbC3
21PmvbVTiWcpp/Nwtkdt0wflG6YrT+2zD/TIgkIQyIdPdEJ6PUasm8G2TJ/ZJTBZEiuVIfv0OyVd
1njz8GTn7pmP6y2YkmmviLSSxAenJs3sX47+gPXMokGgfoqlhMLC1ipmTHZyHec5FJ8UwuLl0kTq
aOYBq7HekPp2QQSeXW2rP1MjZ7WuKCTy+Y8Nym8bUK4OAphuE28+Gnkp1peeJ0u3RfMN0SjPZips
QM2EWc5yz0PCK1V6JAPHVbsUd9C2nFIP4mlawtATaYoERkEglNqPytThoZVlv91hxzCoccObQvVh
rFjDsVHr9byHC+uec6+ZvGmEsUEu/EjbNmvWGMwqUi7yLaLUIPBqc7P240GJh5BAaoVTmppJsccy
Vg8rgHFomRV38OpWwdFCme1AyFX/IcJoFQYNvaNz2qDrFQUDp0MgQNjb4o3zGnqRt718o7lFnrO7
OZzmItpdZvwsHRgZb+mK2Wr7YeEJz+S4ukrJgh8PxH50cdzM2xDe8exbb+47i/tb1bk0ah33RLDg
AL7LHVYN93VkDOdJ1jCmX8XDvm1FbJ6YwjlRFjxclmKzD1t0W5/oZ1m/BAwEgqG5PUfJmENWuSrx
GTXJpj5Ldn2bJDxNmliLZ24XjMC0vEOGdMCxExyyb61Qz83y0sbcyDBBKq8tcBAQVBFbH10z6LE5
4G+Fc4Ms4Cz/pRv33co+wkp40UGoeW95pBcUbTNjVWYMZYenNUc9sNkfPAvdr6RVQOCW2xqRyb25
i69wsjw/XcXFtoQtvIRmES9plhqXjR9qekZbnS7CwQcHNlSpVEkCEvr6QjqOowo0EoogIJp9n9XR
xFvLxrVog0QV/Z7fT9ZfBevYFC+9U/OgMOOkroYxyVjXr4wThpnrqUYmHvA1dUotmfgBfzOkXsPe
XJ5xHoqoKyEy9vrW5FkKZugq6jfZv6Df4P8dAcw8F5+srYv5B/Q9+YL+mzW//gat7k/tegYAAA==#>
#endregion

<#
    .NOTES
    --------------------------------------------------------------------------------
     Code generated by:  SAPIEN Technologies, Inc., PowerShell Studio 2020 v5.7.172
     Generated on:       7/14/2020 5:44 PM
     Generated by:       Administrator
    --------------------------------------------------------------------------------
    .DESCRIPTION
        GUI script generated by PowerShell Studio 2020
#>


#----------------------------------------------
#region Application Functions
#----------------------------------------------

#endregion Application Functions

#----------------------------------------------
# Generated Form Function
#----------------------------------------------
function Show-AD-GUI-Test_psf {

	#----------------------------------------------
	#region Import the Assemblies
	#----------------------------------------------
	[void][reflection.assembly]::Load('System.Windows.Forms, Version=2.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089')
	[void][reflection.assembly]::Load('System.Drawing, Version=2.0.0.0, Culture=neutral, PublicKeyToken=b03f5f7f11d50a3a')
	#endregion Import Assemblies

	#----------------------------------------------
	#region Generated Form Objects
	#----------------------------------------------
	[System.Windows.Forms.Application]::EnableVisualStyles()
	$form1 = New-Object 'System.Windows.Forms.Form'
	$tabcontrol1 = New-Object 'System.Windows.Forms.TabControl'
	$TabCreate = New-Object 'System.Windows.Forms.TabPage'
	$labelID = New-Object 'System.Windows.Forms.Label'
	$UserID = New-Object 'System.Windows.Forms.TextBox'
	$buttonCreateUser = New-Object 'System.Windows.Forms.Button'
	$labelPassword = New-Object 'System.Windows.Forms.Label'
	$labelLastName = New-Object 'System.Windows.Forms.Label'
	$labelFirstName = New-Object 'System.Windows.Forms.Label'
	$TextPassword = New-Object 'System.Windows.Forms.TextBox'
	$TextLastName = New-Object 'System.Windows.Forms.TextBox'
	$TextFirstName = New-Object 'System.Windows.Forms.TextBox'
	$buttonGet = New-Object 'System.Windows.Forms.Button'
	$buttonSetPassword = New-Object 'System.Windows.Forms.Button'
	$TextPwd = New-Object 'System.Windows.Forms.TextBox'
	$labelNewPassword = New-Object 'System.Windows.Forms.Label'
	$labelUserName = New-Object 'System.Windows.Forms.Label'
	$UserText = New-Object 'System.Windows.Forms.TextBox'
	$buttonUnlock = New-Object 'System.Windows.Forms.Button'
	$InitialFormWindowState = New-Object 'System.Windows.Forms.FormWindowState'
	#endregion Generated Form Objects

	#----------------------------------------------
	# User Generated Script
	#----------------------------------------------
	
	$form1_Load={
		#TODO: Initialize Form Controls here
		
	}
	
	$UserText_TextChanged={
		#TODO: Place custom script here
		
	}
	
	$buttonUnlock_Click= {
		#TODO: Place custom script here
		$UserText = $UserText.Text
		Get-ADUser -Filter "Name -like '$UserText'" | Out-GridView
	}
	$labelUserName_Click={
		#TODO: Place custom script here
		
	}
	
	$buttonSetPassword_Click={
		$UserName = $UserText.Text
		$UserPwd = $TextPwd.Text
		$pass = ConvertTo-SecureString $UserPwd -AsPlainText -Force
		Get-ADUser -Filter "SamAccountName -eq '$UserName'" | Set-ADAccountPassword -NewPassword $pass
		
	}
	
	$buttonGet_Click={
		#TODO: Place custom script here
		$UserName = $UserText.Text
		Get-ADUser -Filter "SamAccountName -eq '$UserName'" | Out-GridView
		
	}
	
	$TextPwd_TextChanged={
		#TODO: Place custom script here
		
	}
	
	$labelFirstName_Click={
		#TODO: Place custom script here
		
	}
	
	$labelPassword_Click={
		#TODO: Place custom script here
		
	}
	
	$buttonCreateUser_Click={
		#TODO: Place custom script here
		$UserName = $TextFirstName.Text
		$UserLast = $TextLastName.Text
		$UserPassword = $TextPassword.Text
		$UserTZ = $UserID.Text
		$UserSecurePassword = ConvertTo-SecureString $UserPassword -AsPlainText -Force
		$FullName = $UserName + " " + $UserLast
		$LoginName = $UserName+$UserLast[0]
		New-ADUser -GivenName $UserName -Name $FullName -SamAccountName $LoginName `
				   -UserPrincipalName $UserTZ@Arelion.com -AccountPassword $UserSecurePassword `
				   -Enabled $true
		
		
	}
	
	# --End User Generated Script--
	#----------------------------------------------
	#region Generated Events
	#----------------------------------------------
	
	$Form_StateCorrection_Load=
	{
		#Correct the initial state of the form to prevent the .Net maximized form issue
		$form1.WindowState = $InitialFormWindowState
	}
	
	$Form_Cleanup_FormClosed=
	{
		#Remove all event handlers from the controls
		try
		{
			$buttonCreateUser.remove_Click($buttonCreateUser_Click)
			$labelPassword.remove_Click($labelPassword_Click)
			$labelFirstName.remove_Click($labelFirstName_Click)
			$buttonGet.remove_Click($buttonGet_Click)
			$buttonSetPassword.remove_Click($buttonSetPassword_Click)
			$TextPwd.remove_TextChanged($TextPwd_TextChanged)
			$labelUserName.remove_Click($labelUserName_Click)
			$UserText.remove_TextChanged($UserText_TextChanged)
			$buttonUnlock.remove_Click($buttonUnlock_Click)
			$form1.remove_Load($form1_Load)
			$form1.remove_Load($Form_StateCorrection_Load)
			$form1.remove_FormClosed($Form_Cleanup_FormClosed)
		}
		catch { Out-Null <# Prevent PSScriptAnalyzer warning #> }
	}
	#endregion Generated Events

	#----------------------------------------------
	#region Generated Form Code
	#----------------------------------------------
	$form1.SuspendLayout()
	$tabcontrol1.SuspendLayout()
	$TabCreate.SuspendLayout()
	#
	# form1
	#
	$form1.Controls.Add($tabcontrol1)
	$form1.Controls.Add($buttonGet)
	$form1.Controls.Add($buttonSetPassword)
	$form1.Controls.Add($TextPwd)
	$form1.Controls.Add($labelNewPassword)
	$form1.Controls.Add($labelUserName)
	$form1.Controls.Add($UserText)
	$form1.Controls.Add($buttonUnlock)
	$form1.AutoScaleDimensions = '6, 13'
	$form1.AutoScaleMode = 'Font'
	$form1.ClientSize = '597, 319'
	$form1.Name = 'form1'
	$form1.Text = 'Form'
	$form1.add_Load($form1_Load)
	#
	# tabcontrol1
	#
	$tabcontrol1.Controls.Add($TabCreate)
	$tabcontrol1.Location = '316, 12'
	$tabcontrol1.Name = 'tabcontrol1'
	$tabcontrol1.SelectedIndex = 0
	$tabcontrol1.Size = '279, 191'
	$tabcontrol1.TabIndex = 7
	#
	# TabCreate
	#
	$TabCreate.Controls.Add($labelID)
	$TabCreate.Controls.Add($UserID)
	$TabCreate.Controls.Add($buttonCreateUser)
	$TabCreate.Controls.Add($labelPassword)
	$TabCreate.Controls.Add($labelLastName)
	$TabCreate.Controls.Add($labelFirstName)
	$TabCreate.Controls.Add($TextPassword)
	$TabCreate.Controls.Add($TextLastName)
	$TabCreate.Controls.Add($TextFirstName)
	$TabCreate.Location = '4, 22'
	$TabCreate.Name = 'TabCreate'
	$TabCreate.Padding = '3, 3, 3, 3'
	$TabCreate.Size = '271, 165'
	$TabCreate.TabIndex = 1
	$TabCreate.Text = 'Create User'
	$TabCreate.UseVisualStyleBackColor = $True
	#
	# labelID
	#
	$labelID.AutoSize = $True
	$labelID.Location = '6, 85'
	$labelID.Name = 'labelID'
	$labelID.Size = '15, 17'
	$labelID.TabIndex = 9
	$labelID.Text = 'ID'
	$labelID.UseCompatibleTextRendering = $True
	#
	# UserID
	#
	$UserID.Location = '165, 85'
	$UserID.Name = 'UserID'
	$UserID.Size = '100, 20'
	$UserID.TabIndex = 8
	#
	# buttonCreateUser
	#
	$buttonCreateUser.Location = '95, 136'
	$buttonCreateUser.Name = 'buttonCreateUser'
	$buttonCreateUser.Size = '75, 23'
	$buttonCreateUser.TabIndex = 7
	$buttonCreateUser.Text = 'Create User'
	$buttonCreateUser.UseCompatibleTextRendering = $True
	$buttonCreateUser.UseVisualStyleBackColor = $True
	$buttonCreateUser.add_Click($buttonCreateUser_Click)
	#
	# labelPassword
	#
	$labelPassword.AutoSize = $True
	$labelPassword.Location = '6, 59'
	$labelPassword.Name = 'labelPassword'
	$labelPassword.Size = '54, 17'
	$labelPassword.TabIndex = 6
	$labelPassword.Text = 'Password'
	$labelPassword.UseCompatibleTextRendering = $True
	$labelPassword.add_Click($labelPassword_Click)
	#
	# labelLastName
	#
	$labelLastName.AutoSize = $True
	$labelLastName.Location = '6, 33'
	$labelLastName.Name = 'labelLastName'
	$labelLastName.Size = '59, 17'
	$labelLastName.TabIndex = 5
	$labelLastName.Text = 'Last Name'
	$labelLastName.UseCompatibleTextRendering = $True
	#
	# labelFirstName
	#
	$labelFirstName.AutoSize = $True
	$labelFirstName.Location = '6, 7'
	$labelFirstName.Name = 'labelFirstName'
	$labelFirstName.Size = '59, 17'
	$labelFirstName.TabIndex = 4
	$labelFirstName.Text = 'First Name'
	$labelFirstName.UseCompatibleTextRendering = $True
	$labelFirstName.add_Click($labelFirstName_Click)
	#
	# TextPassword
	#
	$TextPassword.Location = '165, 59'
	$TextPassword.Name = 'TextPassword'
	$TextPassword.PasswordChar = '*'
	$TextPassword.Size = '100, 20'
	$TextPassword.TabIndex = 2
	#
	# TextLastName
	#
	$TextLastName.Location = '165, 33'
	$TextLastName.Name = 'TextLastName'
	$TextLastName.Size = '100, 20'
	$TextLastName.TabIndex = 1
	#
	# TextFirstName
	#
	$TextFirstName.Location = '165, 7'
	$TextFirstName.Name = 'TextFirstName'
	$TextFirstName.Size = '100, 20'
	$TextFirstName.TabIndex = 0
	#
	# buttonGet
	#
	$buttonGet.Location = '197, 180'
	$buttonGet.Name = 'buttonGet'
	$buttonGet.Size = '75, 23'
	$buttonGet.TabIndex = 6
	$buttonGet.Text = 'Get User'
	$buttonGet.UseCompatibleTextRendering = $True
	$buttonGet.UseVisualStyleBackColor = $True
	$buttonGet.add_Click($buttonGet_Click)
	#
	# buttonSetPassword
	#
	$buttonSetPassword.Location = '12, 180'
	$buttonSetPassword.Name = 'buttonSetPassword'
	$buttonSetPassword.Size = '94, 23'
	$buttonSetPassword.TabIndex = 5
	$buttonSetPassword.Text = 'Set Password'
	$buttonSetPassword.UseCompatibleTextRendering = $True
	$buttonSetPassword.UseVisualStyleBackColor = $True
	$buttonSetPassword.add_Click($buttonSetPassword_Click)
	#
	# TextPwd
	#
	$TextPwd.Location = '107, 69'
	$TextPwd.Name = 'TextPwd'
	$TextPwd.PasswordChar = '*'
	$TextPwd.Size = '73, 20'
	$TextPwd.TabIndex = 4
	$TextPwd.add_TextChanged($TextPwd_TextChanged)
	#
	# labelNewPassword
	#
	$labelNewPassword.AutoSize = $True
	$labelNewPassword.Location = '12, 72'
	$labelNewPassword.Name = 'labelNewPassword'
	$labelNewPassword.Size = '80, 17'
	$labelNewPassword.TabIndex = 3
	$labelNewPassword.Text = 'New Password'
	$labelNewPassword.UseCompatibleTextRendering = $True
	#
	# labelUserName
	#
	$labelUserName.AutoSize = $True
	$labelUserName.Location = '12, 28'
	$labelUserName.Name = 'labelUserName'
	$labelUserName.Size = '61, 17'
	$labelUserName.TabIndex = 2
	$labelUserName.Text = 'User Name'
	$labelUserName.UseCompatibleTextRendering = $True
	$labelUserName.add_Click($labelUserName_Click)
	#
	# UserText
	#
	$UserText.Location = '79, 25'
	$UserText.Name = 'UserText'
	$UserText.Size = '100, 20'
	$UserText.TabIndex = 1
	$UserText.add_TextChanged($UserText_TextChanged)
	#
	# buttonUnlock
	#
	$buttonUnlock.Location = '112, 180'
	$buttonUnlock.Name = 'buttonUnlock'
	$buttonUnlock.Size = '75, 23'
	$buttonUnlock.TabIndex = 0
	$buttonUnlock.Text = 'Unlock'
	$buttonUnlock.UseCompatibleTextRendering = $True
	$buttonUnlock.UseVisualStyleBackColor = $True
	$buttonUnlock.add_Click($buttonUnlock_Click)
	$TabCreate.ResumeLayout()
	$tabcontrol1.ResumeLayout()
	$form1.ResumeLayout()
	#endregion Generated Form Code

	#----------------------------------------------

	#Save the initial state of the form
	$InitialFormWindowState = $form1.WindowState
	#Init the OnLoad event to correct the initial state of the form
	$form1.add_Load($Form_StateCorrection_Load)
	#Clean up the control events
	$form1.add_FormClosed($Form_Cleanup_FormClosed)
	#Show the Form
	return $form1.ShowDialog()

} #End Function

#Call the form
Show-AD-GUI-Test_psf | Out-Null
