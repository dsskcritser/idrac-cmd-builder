<# This form was created using POSHGUI.com  a free online gui designer for PowerShell
.NAME
    IDRAC RACADM Configuration
.SYNOPSIS
    iDRAC RACADM Command Creator
#>

Add-Type -AssemblyName System.Windows.Forms
[System.Windows.Forms.Application]::EnableVisualStyles()

$Form                            = New-Object system.Windows.Forms.Form
$Form.ClientSize                 = New-Object System.Drawing.Point(865,660)
$Form.text                       = "iDRAC RACADM Command Creator"
$Form.TopMost                    = $false

$chkNTPSettings                  = New-Object system.Windows.Forms.CheckBox
$chkNTPSettings.text             = "NTP Enabled"
$chkNTPSettings.AutoSize         = $false
$chkNTPSettings.width            = 169
$chkNTPSettings.height           = 15
$chkNTPSettings.location         = New-Object System.Drawing.Point(19,33)
$chkNTPSettings.Font             = New-Object System.Drawing.Font('Microsoft Sans Serif',10)

$grpNTP                          = New-Object system.Windows.Forms.Groupbox
$grpNTP.height                   = 161
$grpNTP.width                    = 378
$grpNTP.text                     = "NTP Settings"
$grpNTP.location                 = New-Object System.Drawing.Point(448,22)

$grpDNS                          = New-Object system.Windows.Forms.Groupbox
$grpDNS.height                   = 172
$grpDNS.width                    = 402
$grpDNS.text                     = "DNS Settings"
$grpDNS.location                 = New-Object System.Drawing.Point(14,198)

$lblDracIP                       = New-Object system.Windows.Forms.Label
$lblDracIP.text                  = "IDRAC IP Address"
$lblDracIP.AutoSize              = $true
$lblDracIP.width                 = 25
$lblDracIP.height                = 10
$lblDracIP.location              = New-Object System.Drawing.Point(28,76)
$lblDracIP.Font                  = New-Object System.Drawing.Font('Microsoft Sans Serif',10)

$lblSubnetMask                   = New-Object system.Windows.Forms.Label
$lblSubnetMask.text              = "Subnet Mask"
$lblSubnetMask.AutoSize          = $true
$lblSubnetMask.width             = 25
$lblSubnetMask.height            = 10
$lblSubnetMask.location          = New-Object System.Drawing.Point(29,104)
$lblSubnetMask.Font              = New-Object System.Drawing.Font('Microsoft Sans Serif',10)

$lblDracGW                       = New-Object system.Windows.Forms.Label
$lblDracGW.text                  = "IDRAC Gateway"
$lblDracGW.AutoSize              = $true
$lblDracGW.width                 = 25
$lblDracGW.height                = 10
$lblDracGW.location              = New-Object System.Drawing.Point(28,130)
$lblDracGW.Font                  = New-Object System.Drawing.Font('Microsoft Sans Serif',10)

$GrpNetwork                      = New-Object system.Windows.Forms.Groupbox
$GrpNetwork.height               = 160
$GrpNetwork.width                = 405
$GrpNetwork.text                 = "IP and Hostname "
$GrpNetwork.location             = New-Object System.Drawing.Point(14,22)

$IDRACIPAddr                     = New-Object system.Windows.Forms.TextBox
$IDRACIPAddr.multiline           = $false
$IDRACIPAddr.text                = "169.254.0.3"
$IDRACIPAddr.width               = 227
$IDRACIPAddr.height              = 20
$IDRACIPAddr.location            = New-Object System.Drawing.Point(152,71)
$IDRACIPAddr.Font                = New-Object System.Drawing.Font('Microsoft Sans Serif',10)

$IdracGW                         = New-Object system.Windows.Forms.TextBox
$IdracGW.multiline               = $false
$IdracGW.width                   = 227
$IdracGW.height                  = 20
$IdracGW.location                = New-Object System.Drawing.Point(152,126)
$IdracGW.Font                    = New-Object System.Drawing.Font('Microsoft Sans Serif',10)

$SubnetMask                      = New-Object system.Windows.Forms.TextBox
$SubnetMask.multiline            = $false
$SubnetMask.width                = 227
$SubnetMask.height               = 20
$SubnetMask.location             = New-Object System.Drawing.Point(152,99)
$SubnetMask.Font                 = New-Object System.Drawing.Font('Microsoft Sans Serif',10)

$DNS2                            = New-Object system.Windows.Forms.TextBox
$DNS2.multiline                  = $false
$DNS2.width                      = 227
$DNS2.height                     = 20
$DNS2.location                   = New-Object System.Drawing.Point(165,140)
$DNS2.Font                       = New-Object System.Drawing.Font('Microsoft Sans Serif',10)

$DNS1                            = New-Object system.Windows.Forms.TextBox
$DNS1.multiline                  = $false
$DNS1.width                      = 227
$DNS1.height                     = 20
$DNS1.location                   = New-Object System.Drawing.Point(164,110)
$DNS1.Font                       = New-Object System.Drawing.Font('Courier New',10)

$lblDNS1                         = New-Object system.Windows.Forms.Label
$lblDNS1.text                    = "DNS1"
$lblDNS1.AutoSize                = $true
$lblDNS1.width                   = 25
$lblDNS1.height                  = 10
$lblDNS1.location                = New-Object System.Drawing.Point(100,114)
$lblDNS1.Font                    = New-Object System.Drawing.Font('Microsoft Sans Serif',10)

$lblDNS2                         = New-Object system.Windows.Forms.Label
$lblDNS2.text                    = "DNS2"
$lblDNS2.AutoSize                = $true
$lblDNS2.width                   = 25
$lblDNS2.height                  = 10
$lblDNS2.location                = New-Object System.Drawing.Point(99,145)
$lblDNS2.Font                    = New-Object System.Drawing.Font('Microsoft Sans Serif',10)

$cbxTimeZone                     = New-Object system.Windows.Forms.ComboBox
$cbxTimeZone.width               = 226
$cbxTimeZone.height              = 20
@('US/Mountain','US/Pacific','US/Arizona','US/Hawaii','US/Eastern','US/Central') | ForEach-Object {[void] $cbxTimeZone.Items.Add($_)}
$cbxTimeZone.location            = New-Object System.Drawing.Point(133,66)
$cbxTimeZone.Font                = New-Object System.Drawing.Font('Microsoft Sans Serif',10)

$lblTZ                           = New-Object system.Windows.Forms.Label
$lblTZ.text                      = "TimeZone"
$lblTZ.AutoSize                  = $true
$lblTZ.width                     = 25
$lblTZ.height                    = 10
$lblTZ.location                  = New-Object System.Drawing.Point(55,68)
$lblTZ.Font                      = New-Object System.Drawing.Font('Microsoft Sans Serif',10)

$lblNTP1                         = New-Object system.Windows.Forms.Label
$lblNTP1.text                    = "NTP1"
$lblNTP1.AutoSize                = $true
$lblNTP1.width                   = 25
$lblNTP1.height                  = 10
$lblNTP1.location                = New-Object System.Drawing.Point(55,107)
$lblNTP1.Font                    = New-Object System.Drawing.Font('Microsoft Sans Serif',10)

$TextBox6                        = New-Object system.Windows.Forms.TextBox
$TextBox6.multiline              = $false
$TextBox6.width                  = 227
$TextBox6.height                 = 20
$TextBox6.location               = New-Object System.Drawing.Point(133,105)
$TextBox6.Font                   = New-Object System.Drawing.Font('Microsoft Sans Serif',10)

$lblNTP2                         = New-Object system.Windows.Forms.Label
$lblNTP2.text                    = "NTP2"
$lblNTP2.AutoSize                = $true
$lblNTP2.width                   = 25
$lblNTP2.height                  = 10
$lblNTP2.location                = New-Object System.Drawing.Point(55,136)
$lblNTP2.Font                    = New-Object System.Drawing.Font('Microsoft Sans Serif',10)

$NTP2                            = New-Object system.Windows.Forms.TextBox
$NTP2.multiline                  = $false
$NTP2.width                      = 227
$NTP2.height                     = 20
$NTP2.location                   = New-Object System.Drawing.Point(133,133)
$NTP2.Font                       = New-Object System.Drawing.Font('Microsoft Sans Serif',10)

$lblDNSRACName                   = New-Object system.Windows.Forms.Label
$lblDNSRACName.text              = "DNSRACName"
$lblDNSRACName.AutoSize          = $true
$lblDNSRACName.width             = 25
$lblDNSRACName.height            = 10
$lblDNSRACName.location          = New-Object System.Drawing.Point(50,54)
$lblDNSRACName.Font              = New-Object System.Drawing.Font('Microsoft Sans Serif',10)

$lblDNSDomainName                = New-Object system.Windows.Forms.Label
$lblDNSDomainName.text           = "DNSDomainName"
$lblDNSDomainName.AutoSize       = $true
$lblDNSDomainName.width          = 25
$lblDNSDomainName.height         = 10
$lblDNSDomainName.location       = New-Object System.Drawing.Point(32,82)
$lblDNSDomainName.Font           = New-Object System.Drawing.Font('Microsoft Sans Serif',10)

$DNSDomainName                   = New-Object system.Windows.Forms.TextBox
$DNSDomainName.multiline         = $false
$DNSDomainName.width             = 227
$DNSDomainName.height            = 20
$DNSDomainName.location          = New-Object System.Drawing.Point(163,80)
$DNSDomainName.Font              = New-Object System.Drawing.Font('Microsoft Sans Serif',10)

$DNSRACName                      = New-Object system.Windows.Forms.TextBox
$DNSRACName.multiline            = $false
$DNSRACName.width                = 227
$DNSRACName.height               = 20
$DNSRACName.location             = New-Object System.Drawing.Point(165,50)
$DNSRACName.Font                 = New-Object System.Drawing.Font('Microsoft Sans Serif',10)

$cbxPrependIDRAC                 = New-Object system.Windows.Forms.CheckBox
$cbxPrependIDRAC.text            = "Prepend `"IDRAC-`" on Hostname"
$cbxPrependIDRAC.AutoSize        = $false
$cbxPrependIDRAC.width           = 244
$cbxPrependIDRAC.height          = 26
$cbxPrependIDRAC.location        = New-Object System.Drawing.Point(20,25)
$cbxPrependIDRAC.Font            = New-Object System.Drawing.Font('Microsoft Sans Serif',10)

$lblDracHostname                 = New-Object system.Windows.Forms.Label
$lblDracHostname.text            = "IDRAC Hostname"
$lblDracHostname.AutoSize        = $true
$lblDracHostname.width           = 25
$lblDracHostname.height          = 10
$lblDracHostname.location        = New-Object System.Drawing.Point(28,43)
$lblDracHostname.Font            = New-Object System.Drawing.Font('Microsoft Sans Serif',10)

$IDRACHostname                   = New-Object system.Windows.Forms.TextBox
$IDRACHostname.multiline         = $false
$IDRACHostname.width             = 227
$IDRACHostname.height            = 20
$IDRACHostname.location          = New-Object System.Drawing.Point(152,37)
$IDRACHostname.Font              = New-Object System.Drawing.Font('Microsoft Sans Serif',10)

$grpPassword                     = New-Object system.Windows.Forms.Groupbox
$grpPassword.height              = 119
$grpPassword.width               = 385
$grpPassword.text                = "Password Change"
$grpPassword.location            = New-Object System.Drawing.Point(448,202)

$cbxChangePwdEnable              = New-Object system.Windows.Forms.CheckBox
$cbxChangePwdEnable.text         = "Change Password"
$cbxChangePwdEnable.AutoSize     = $false
$cbxChangePwdEnable.width        = 244
$cbxChangePwdEnable.height       = 14
$cbxChangePwdEnable.location     = New-Object System.Drawing.Point(15,21)
$cbxChangePwdEnable.Font         = New-Object System.Drawing.Font('Microsoft Sans Serif',10)

$lblCurrPass                     = New-Object system.Windows.Forms.Label
$lblCurrPass.text                = "Current Password"
$lblCurrPass.AutoSize            = $true
$lblCurrPass.width               = 25
$lblCurrPass.height              = 10
$lblCurrPass.location            = New-Object System.Drawing.Point(17,52)
$lblCurrPass.Font                = New-Object System.Drawing.Font('Microsoft Sans Serif',10)

$CurrentPwd                      = New-Object system.Windows.Forms.TextBox
$CurrentPwd.multiline            = $false
$CurrentPwd.text                 = "calvin"
$CurrentPwd.width                = 227
$CurrentPwd.height               = 20
$CurrentPwd.location             = New-Object System.Drawing.Point(139,49)
$CurrentPwd.Font                 = New-Object System.Drawing.Font('Microsoft Sans Serif',10)

$lblNewPass                      = New-Object system.Windows.Forms.Label
$lblNewPass.text                 = "New Password"
$lblNewPass.AutoSize             = $true
$lblNewPass.width                = 25
$lblNewPass.height               = 10
$lblNewPass.location             = New-Object System.Drawing.Point(18,82)
$lblNewPass.Font                 = New-Object System.Drawing.Font('Microsoft Sans Serif',10)

$NewPwd                          = New-Object system.Windows.Forms.TextBox
$NewPwd.multiline                = $false
$NewPwd.width                    = 227
$NewPwd.height                   = 20
$NewPwd.location                 = New-Object System.Drawing.Point(139,78)
$NewPwd.Font                     = New-Object System.Drawing.Font('Microsoft Sans Serif',10)

$txtConsole                      = New-Object system.Windows.Forms.TextBox
$txtConsole.multiline            = $true
$txtConsole.width                = 832
$txtConsole.height               = 263
$txtConsole.Anchor               = 'top,right,bottom,left'
$txtConsole.location             = New-Object System.Drawing.Point(13,385)
$txtConsole.Font                 = New-Object System.Drawing.Font('Courier New',8)

$btnConfigure                    = New-Object system.Windows.Forms.Button
$btnConfigure.text               = "Build RACADM Config"
$btnConfigure.width              = 237
$btnConfigure.height             = 30
$btnConfigure.location           = New-Object System.Drawing.Point(460,332)
$btnConfigure.Font               = New-Object System.Drawing.Font('Microsoft Sans Serif',10)

$btnReset                        = New-Object system.Windows.Forms.Button
$btnReset.text                   = "Reset"
$btnReset.width                  = 106
$btnReset.height                 = 30
$btnReset.location               = New-Object System.Drawing.Point(715,332)
$btnReset.Font                   = New-Object System.Drawing.Font('Microsoft Sans Serif',10)

$grpNTP.controls.AddRange(@($chkNTPSettings,$cbxTimeZone,$lblTZ,$lblNTP1,$TextBox6,$lblNTP2,$NTP2))
$Form.controls.AddRange(@($grpNTP,$grpDNS,$GrpNetwork,$grpPassword,$txtConsole,$btnConfigure,$btnReset))
$GrpNetwork.controls.AddRange(@($lblDracIP,$lblSubnetMask,$lblDracGW,$IDRACIPAddr,$IdracGW,$SubnetMask,$lblDracHostname,$IDRACHostname))
$grpDNS.controls.AddRange(@($DNS2,$DNS1,$lblDNS1,$lblDNS2,$lblDNSRACName,$lblDNSDomainName,$DNSDomainName,$DNSRACName,$cbxPrependIDRAC))
$grpPassword.controls.AddRange(@($cbxChangePwdEnable,$lblCurrPass,$CurrentPwd,$lblNewPass,$NewPwd))

$btnConfigure.Add_Click({ BuildConfigClick })

$OFS = "`r`n"

function BuildConfigClick { 
   $baseracadm = "racadm -r " + $IDRACIPAddr.text + " -u root -p " + $CurrentPwd.text + " --nocertwarn set " 
   $entrycode = $baseracadm + "idrac.Tuning.DefaultCredentialWarning Disabled" + [environment]::NewLine
   $entrycode = $entrycode + $baseracadm + "set iDRAC.IPMILan.Enable 1" + [environment]::NewLine
   $entrycode = $entrycode + $baseracadm + "set idrac.ipv4.dhcpenable 0" + [environment]::NewLine
   $entrycode = $entrycode + $baseracadm + "set idrac.ipv4.enable enable" + [environment]::NewLine
   $txtConsole.text = $baseracadm 
    
  
    

set idrac.ipv4.address 172.27.78.23
set idrac.ipv4.netmask 255.255.255.0
set idrac.ipv4.gateway 172.27.78.1
set idrac.ipv4.dnsfromdhcp 0
set idrac.nic.dnsracname IDRAC-vmhostslc3

set iDRAC.Time.Timezone US/Mountain
set iDRAC.NTPConfigGroup.NTPEnable 1
set iDRAC.NTPConfigGroup.NTP1 172.27.69.38
set System.LCD.Configuration 16
set System.LCD.Configuration 16

    
    
    
}




#Write your logic code here
$buildlines = $
$txtConsole  
[void]$Form.ShowDialog()