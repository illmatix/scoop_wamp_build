$WAMP = "apache php mysql";

write-host "
***** Installing WAMP $WAMP ******
";

# Install wamp stack
scoop install $WAMP;

$CurrentDirectory = [System.IO.Path]::GetDirectoryName($myInvocation.MyCommand.Definition);

powershell $(Join-Path $CurrentDirectory conf\apache.ps1);
powershell $(Join-Path $CurrentDirectory conf\php.ps1);
powershell $(Join-Path $CurrentDirectory conf\mysql.ps1);


