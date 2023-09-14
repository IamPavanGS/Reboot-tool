[void][System.Reflection.Assembly]::LoadWithPartialName('presentationframework')
$input = @’
<Window x:Name="Reboot Tool"  x:Class="WpfApp2.MainWindow"
        xmlns="http://schemas.microsoft.com/winfx/2006/xaml/presentation"
        xmlns:x="http://schemas.microsoft.com/winfx/2006/xaml"
        xmlns:d="http://schemas.microsoft.com/expression/blend/2008"
        xmlns:mc="http://schemas.openxmlformats.org/markup-compatibility/2006"
        xmlns:local="clr-namespace:Reboot_Tool"
        mc:Ignorable="d"
        Title="Reboot Tool" Height="300" Width="751" Background="#FF191B41" UseLayoutRounding="True" ResizeMode="NoResize" WindowStyle="ThreeDBorderWindow" FontWeight="SemiBold" FontStyle="Italic" Foreground="Black">
    <Grid>
        <Grid.ColumnDefinitions>
            <ColumnDefinition Width="527*"/>
            <ColumnDefinition Width="89*"/>
            <ColumnDefinition Width="135*"/>
        </Grid.ColumnDefinitions>
        <Grid.Effect>
            <DropShadowEffect/>
        </Grid.Effect>
        <TextBox x:Name="Hostname_txt" HorizontalAlignment="Left" Height="22" Margin="27,31,0,0" TextWrapping="Wrap" Text="Enter IP address or Hostname" VerticalAlignment="Top" Width="382" ToolTip="Enter Hostname or IP address" UseLayoutRounding="True">
            <TextBox.Effect>
                <DropShadowEffect/>
            </TextBox.Effect>
        </TextBox>
        <Button x:Name="Ping_btn" Content="Ping" HorizontalAlignment="Left" Height="22" Margin="511,31,0,0" VerticalAlignment="Top" Width="92" Background="White" ToolTip="Ping the Computer" Grid.ColumnSpan="2">
            <Button.Effect>
                <DropShadowEffect/>
            </Button.Effect>
        </Button>
        <Button x:Name="Reboot_btn" Content="Reboot" HorizontalAlignment="Left" Height="22" Margin="16,31,0,0" VerticalAlignment="Top" Width="92" Background="White" ToolTip="Reboot the Computer" Grid.Column="2">
            <Button.Effect>
                <DropShadowEffect/>
            </Button.Effect>
        </Button>
        <RichTextBox x:Name="Rich_txt_box" Margin="27,80,113,19" Background="#FFF7F6F6" IsReadOnly="True" UseLayoutRounding="True">
            <FlowDocument>
                <Paragraph>
                    <Run Text=""/>
                </Paragraph>
            </FlowDocument>
        </RichTextBox>
        <TextBlock HorizontalAlignment="Left" Margin="511,148,0,0" TextWrapping="Wrap" Text="Reboot Tool" VerticalAlignment="Top" Grid.ColumnSpan="3" Width="222" FontSize="22" Foreground="#FFD63D3D"/>
        <TextBlock HorizontalAlignment="Left" Margin="510,191,0,0" TextWrapping="Wrap" Text="Created by IT Team" VerticalAlignment="Top" Grid.ColumnSpan="3" Width="214" Foreground="#FFD63D3D"/>
        <TextBlock HorizontalAlignment="Left" Margin="511,219,0,0" TextWrapping="Wrap" Text="" VerticalAlignment="Top" Grid.ColumnSpan="3" Width="213" Foreground="#FFD63D3D"/>
        <TextBlock x:Name="About_Me" Grid.Column="2" HorizontalAlignment="Left" Margin="73,253,0,0" TextWrapping="Wrap" Text="About Me" VerticalAlignment="Top" Foreground="#FFBD8A8A" ToolTip="pavansridhar.co.in" TextDecorations="Underline"/>
        <Button x:Name="Credentials" Content="Add Cred" HorizontalAlignment="Left" Height="22" Margin="511,64,0,0" VerticalAlignment="Top" Width="92" Background="White" ToolTip="Add Credentials" Grid.ColumnSpan="2">
            <Button.Effect>
                <DropShadowEffect/>
            </Button.Effect>
        </Button>
        <Button x:Name="Check_OS" Content="Check OS" HorizontalAlignment="Left" Height="22" Margin="16,64,0,0" VerticalAlignment="Top" Width="92" Background="White" ToolTip="Check OS" Grid.Column="2">
            <Button.Effect>
                <DropShadowEffect/>
            </Button.Effect>
        </Button>
        <Button x:Name="Continious_Ping" Content="Continious Ping" HorizontalAlignment="Left" Height="22" Margin="511,99,0,0" VerticalAlignment="Top" Width="92" Background="White" ToolTip="Add Credentials" Grid.ColumnSpan="2">
            <Button.Effect>
                <DropShadowEffect/>
            </Button.Effect>
        </Button>
        <Button x:Name="Take_RDP" Content="Take RDP" HorizontalAlignment="Left" Height="22" Margin="16,99,0,0" VerticalAlignment="Top" Width="92" Background="White" ToolTip="Check OS" Grid.Column="2">
            <Button.Effect>
                <DropShadowEffect/>
            </Button.Effect>
        </Button>

    </Grid>
</Window>
'@

function call-about {

$input1 = @’
<Window x:Name="About Me"  x:Class="WpfApp2.MainWindow"
        xmlns="http://schemas.microsoft.com/winfx/2006/xaml/presentation"
        xmlns:x="http://schemas.microsoft.com/winfx/2006/xaml"
        xmlns:d="http://schemas.microsoft.com/expression/blend/2008"
        xmlns:mc="http://schemas.openxmlformats.org/markup-compatibility/2006"
        xmlns:local="clr-namespace:About_Me"
        mc:Ignorable="d"
        Title="About Me" Height="207" Width="357" Background="#FF191B41" WindowStyle="ToolWindow">
    <Window.Effect>
        <DropShadowEffect/>
    </Window.Effect>
    <Grid>
        <Grid.ColumnDefinitions>
            <ColumnDefinition Width="158*"/>
            <ColumnDefinition Width="83*"/>
        </Grid.ColumnDefinitions>
        <TextBlock x:Name="Name" HorizontalAlignment="Left" Margin="10,76,0,0" TextWrapping="Wrap" Text="Creator Name :" VerticalAlignment="Top" FontSize="14" FontWeight="Bold" Foreground="#FFD63D3D"/>
        <TextBlock HorizontalAlignment="Left" Margin="147,76,0,0" TextWrapping="Wrap" Text="Pavan G S" VerticalAlignment="Top" FontSize="14" FontWeight="Bold" Foreground="White" Grid.ColumnSpan="2"/>
        <TextBlock x:Name="Organization" HorizontalAlignment="Left" Margin="10,109,0,0" TextWrapping="Wrap" Text="Company:" VerticalAlignment="Top" FontWeight="Bold" FontSize="14" Foreground="#FFD63D3D"/>
        <TextBlock HorizontalAlignment="Left" Margin="148,109,0,0" TextWrapping="Wrap" Text="Pavan" VerticalAlignment="Top" FontSize="14" FontWeight="Bold" Foreground="White"/>
        <TextBlock x:Name="Weblink" HorizontalAlignment="Left" Margin="10,141,0,0" TextWrapping="Wrap" Text="Website:" VerticalAlignment="Top" FontWeight="Bold" FontSize="14" Foreground="#FFD63D3D"/>
        <TextBlock HorizontalAlignment="Left" Margin="149,141,0,0" TextWrapping="Wrap" Text="pavansridhar.co.in" VerticalAlignment="Top" FontSize="14" FontWeight="Bold" Grid.ColumnSpan="2" Foreground="White" TextDecorations="Underline"/>
        <TextBlock x:Name="Name_Copy" HorizontalAlignment="Left" Margin="10,10,0,0" TextWrapping="Wrap" Text="Application Name:" VerticalAlignment="Top" FontSize="14" FontWeight="Bold" Foreground="#FFD63D3D"/>
        <TextBlock HorizontalAlignment="Left" Margin="147,11,0,0" TextWrapping="Wrap" Text="Reboot Tool" VerticalAlignment="Top" FontSize="14" FontWeight="Bold" Foreground="White" Grid.ColumnSpan="2"/>
        <TextBlock x:Name="Name_Copy1" HorizontalAlignment="Left" Margin="10,43,0,0" TextWrapping="Wrap" Text="Version:" VerticalAlignment="Top" FontSize="14" FontWeight="Bold" Foreground="#FFD63D3D"/>
        <TextBlock HorizontalAlignment="Left" Margin="147,44,0,0" TextWrapping="Wrap" Text="V1.0" VerticalAlignment="Top" FontSize="14" FontWeight="Bold" Foreground="White" Grid.ColumnSpan="2"/>

    </Grid>
</Window>

'@

$input1 = $input1 -replace '^<Window.*', '<Window' -replace 'mc:Ignorable="d"','' -replace "x:N",'N' 
[xml]$xaml = $input1
$xmlreader=(New-Object System.Xml.XmlNodeReader $xaml)
$xamlForm1=[Windows.Markup.XamlReader]::Load( $xmlreader )

$xamlForm1.ShowDialog() | out-null

}

function getcredentials{
$input2 = @'
<Window x:Name="Credentials"  x:Class="WpfApp2.MainWindow"
        xmlns="http://schemas.microsoft.com/winfx/2006/xaml/presentation"
        xmlns:x="http://schemas.microsoft.com/winfx/2006/xaml"
        xmlns:d="http://schemas.microsoft.com/expression/blend/2008"
        xmlns:mc="http://schemas.openxmlformats.org/markup-compatibility/2006"
        xmlns:local="clr-namespace:Credentials"
        mc:Ignorable="d"
        Title="Credentials" Height="233" Width="327" Foreground="#FF3A96A2" WindowStyle="ToolWindow">
    <Grid Background="{DynamicResource {x:Static SystemColors.InactiveCaptionBrushKey}}">
        <TextBlock x:Name="Username_txt" HorizontalAlignment="Left" Margin="10,21,0,0" TextWrapping="Wrap" Text="Username:" VerticalAlignment="Top" FontWeight="Bold" FontSize="14" Width="87" Foreground="Black"/>
        <TextBlock x:Name="password_txt" HorizontalAlignment="Left" Margin="10,62,0,0" TextWrapping="Wrap" Text="Password:" VerticalAlignment="Top" FontWeight="Bold" FontSize="14" Width="87" Foreground="Black"/>
        <TextBox x:Name="username_txt_box" HorizontalAlignment="Left" Margin="122,21,0,0" TextWrapping="Wrap" Text="domain\" VerticalAlignment="Top" Width="183" Height="19" Background="White"/>
         <PasswordBox x:Name="password_box" HorizontalAlignment="Left" Margin="122,62,0,0" VerticalAlignment="Top" Width="183" Height="19"/>
        <Button x:Name="ok_btn" Content="Ok" HorizontalAlignment="Left" Margin="253,170,0,0" VerticalAlignment="Top" Width="52"/>

    </Grid>
</Window>
'@

$input2 = $input2 -replace '^<Window.*', '<Window' -replace 'mc:Ignorable="d"', '' -replace "x:N", 'N'
[xml]$xaml = $input2
$xmlreader = (New-Object System.Xml.XmlNodeReader $xaml)
$xamlForm2 = [Windows.Markup.XamlReader]::Load($xmlreader)


$okButton = $xamlForm2.FindName("ok_btn")

$okButton.Add_Click({
    $username = $xamlForm2.FindName("username_txt_box").Text
    $passwordBox = $xamlForm2.FindName("password_box")
    $password = $passwordBox.Password
    $securePass = ConvertTo-SecureString -String $password -AsPlainText -Force

    
    $cred = New-Object System.Management.Automation.PSCredential $username, $securePass

    $global:username = $username
    $global:password = $passwordBox.password
    $global:output = $cred

    
    $xamlForm2.Close()
})

$xamlForm2.ShowDialog() | Out-Null
}

$input = $input -replace '^<Window.*', '<Window' -replace 'mc:Ignorable="d"','' -replace "x:N",'N' 
[xml]$xaml = $input
$xmlreader=(New-Object System.Xml.XmlNodeReader $xaml)
$xamlForm=[Windows.Markup.XamlReader]::Load( $xmlreader )

$xaml.SelectNodes("//*[@Name]") | ForEach-Object -Process {
    Set-Variable -Name ($_.Name) -Value $xamlForm.FindName($_.Name)
    }


function Reboot {
    $machine = $Hostname_txt.Text
    $textRange = New-Object System.Windows.Documents.TextRange($Rich_txt_box.Document.ContentEnd, $Rich_txt_box.Document.ContentEnd)

    if (($machine -eq "") -or ($machine -eq 'Enter IP address or Hostname')) {
        $textRange.Text = "Kindly enter the Hostname or the IP address.`n"
        $textRange.ApplyPropertyValue([System.Windows.Documents.TextElement]::ForegroundProperty, [System.Windows.Media.Brushes]::Red)
    }
    else {
        try {
            Restart-Computer -ComputerName $machine -Credential $global:output -Force -ErrorAction Stop

            $successMessage = "Reboot command sent to $machine successfully.`n"
            $successTextRange = New-Object System.Windows.Documents.TextRange($Rich_txt_box.Document.ContentEnd, $Rich_txt_box.Document.ContentEnd)
            $successTextRange.Text = "$successMessage"
            $successTextRange.ApplyPropertyValue([System.Windows.Documents.TextElement]::ForegroundProperty, [System.Windows.Media.Brushes]::Green)
        }
        catch {
            $errorMessage = "Error: Unable to reboot $machine. $($_.Exception.Message)`n"
            $errorTextRange = New-Object System.Windows.Documents.TextRange($Rich_txt_box.Document.ContentEnd, $Rich_txt_box.Document.ContentEnd)
            $errorTextRange.Text = "$errorMessage"
            $errorTextRange.ApplyPropertyValue([System.Windows.Documents.TextElement]::ForegroundProperty, [System.Windows.Media.Brushes]::Red)
        }
    }
}



function Ping-Computer {
    $ipAddress = $Hostname_txt.Text
    $textRange = New-Object System.Windows.Documents.TextRange($Rich_txt_box.Document.ContentEnd, $Rich_txt_box.Document.ContentEnd)
    if(($ipAddress -eq "") -or ($ipAddress -eq 'Enter IP address or Hostname')){
    $textRange.Text = "Kindly enter the Hostname or the IP address.`n"
        $textRange.ApplyPropertyValue([System.Windows.Documents.TextElement]::ForegroundProperty, [System.Windows.Media.Brushes]::Red)
    }else{
    if (Test-Connection -ComputerName $ipAddress -Count 1 -Quiet) {
        $textRange.Text = "The machine $ipAddress is alive.`n"
        $textRange.ApplyPropertyValue([System.Windows.Documents.TextElement]::ForegroundProperty, [System.Windows.Media.Brushes]::Green)
    } else {
        $textRange.Text = "The machine $ipAddress is not alive.`n"
        $textRange.ApplyPropertyValue([System.Windows.Documents.TextElement]::ForegroundProperty, [System.Windows.Media.Brushes]::Red)
    }
    }
}


function Get-OSName {
    $ServerName = $Hostname_txt.Text
    $textRange = New-Object System.Windows.Documents.TextRange($Rich_txt_box.Document.ContentEnd, $Rich_txt_box.Document.ContentEnd)

    if(($ServerName -eq "") -or ($ServerName -eq 'Enter IP address or Hostname')){
    $textRange.Text = "Kindly enter the Hostname or the IP address.`n"
        $textRange.ApplyPropertyValue([System.Windows.Documents.TextElement]::ForegroundProperty, [System.Windows.Media.Brushes]::Red)
        }else{

    if (Test-Connection -ComputerName $ServerName -Count 1 -Quiet) {
        $Response = Test-Connection $ServerName -Count 1 | Select-Object -ExpandProperty ResponseTimeToLive

        switch ($Response) {
            { $_ -le 64 } {
                $textRange.Text = "The machine $ServerName is likely running Linux.`n"
                break
            }
            { $_ -le 128 } {
                $textRange.Text = "The machine $ServerName is likely running Windows.`n"
                break
            }
            { $_ -le 255 } {
                $textRange.Text = "The machine $ServerName is likely running Unix.`n"
                break
            }
            default {
                $textRange.Text = "Unable to determine the operating system of $ServerName.`n"
            }
        }
    } else {
        $textRange.Text = "The machine $ServerName is not responding.`n"
    }
    }
}

function Get-Remote {
    $remotemachine = $Hostname_txt.Text
    $textRange = New-Object System.Windows.Documents.TextRange($Rich_txt_box.Document.ContentEnd, $Rich_txt_box.Document.ContentEnd)

    if (($remotemachine -eq "") -or ($remotemachine -eq 'Enter IP address or Hostname')) {
        $textRange.Text = "Kindly enter the Hostname or the IP address.`n"
        $textRange.ApplyPropertyValue([System.Windows.Documents.TextElement]::ForegroundProperty, [System.Windows.Media.Brushes]::Red)
    }
    else {
        try {
            $remotemachine = $Hostname_txt.Text
            $global:hostname = $remotemachine
            cmdkey /generic:$global:hostname /user:$global:username /pass:$global:password
            mstsc /v:$global:hostname
            start-sleep -Seconds 10
            cmdkey /delete:$global:hostname
            $successMessage = "$machine RDP has been opened successfully.`n"
            $successTextRange = New-Object System.Windows.Documents.TextRange($Rich_txt_box.Document.ContentEnd, $Rich_txt_box.Document.ContentEnd)
            $successTextRange.Text = "$successMessage"
            $successTextRange.ApplyPropertyValue([System.Windows.Documents.TextElement]::ForegroundProperty, [System.Windows.Media.Brushes]::Green)
        }
        catch {
            $errorMessage = "Error: Unable to RDP $machine. $($_.Exception.Message)`n"
            $errorTextRange = New-Object System.Windows.Documents.TextRange($Rich_txt_box.Document.ContentEnd, $Rich_txt_box.Document.ContentEnd)
            $errorTextRange.Text = "$errorMessage"
            $errorTextRange.ApplyPropertyValue([System.Windows.Documents.TextElement]::ForegroundProperty, [System.Windows.Media.Brushes]::Red)
        }
    }
}


function Continuous-Ping {

$remotemachine = $Hostname_txt.Text
    $textRange = New-Object System.Windows.Documents.TextRange($Rich_txt_box.Document.ContentEnd, $Rich_txt_box.Document.ContentEnd)

    if (($remotemachine -eq "") -or ($remotemachine -eq 'Enter IP address or Hostname')) {
        $textRange.Text = "Kindly enter the Hostname or the IP address.`n"
        $textRange.ApplyPropertyValue([System.Windows.Documents.TextElement]::ForegroundProperty, [System.Windows.Media.Brushes]::Red)
    }
    else {
    param (
        [string]$HostName = $remotemachine
    )

    $ping = "ping $HostName -t"
    Start-Process -FilePath "cmd.exe" -ArgumentList "/c $ping"
    }
}

$Ping_btn.Add_Click({
    Ping-Computer
})


$About_Me.Add_MouseDown({
    call-about
    
})

$Credentials.Add_Click({

getcredentials

})

$Reboot_btn.Add_Click({

Reboot

})

$Check_OS.Add_Click({

Get-OSName

})

$Take_RDP.Add_Click({

Get-Remote

})

$Continious_Ping.Add_Click({

Continuous-Ping #-HostName $Hostname_txt.Text

})



$Hostname_txt.Add_GotFocus({
    if (-not $textBoxFocused) {
        $Hostname_txt.Clear()
        $textBoxFocused = $true
    }
})

$xamlForm.ShowDialog() | out-null

<#
_________                                ________    _________
\______   \_____ ___  _______    ____    /  _____/   /   _____/
 |     ___/\__  \\  \/ /\__  \  /    \  /   \  ___   \_____  \ 
 |    |     / __ \\   /  / __ \|   |  \ \    \_\  \  /        \
 |____|    (____  /\_/  (____  /___|  /  \______  / /_______  /
                \/           \/     \/          \/          \/ 
#>