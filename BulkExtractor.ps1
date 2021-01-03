$archivepath = "C:\users\benh\OneDrive\Apps\Google⁠ Download Your Data\"
$destinationarchivepath = "D:\Photos"
$photodestination = "C:\users\benh\OneDrive\pictures\"
$archives = get-childitem $archivepath | where-object name -notlike "*.DONE" | Sort-Object name -Descending | Select-Object -First 1
foreach($archive in $archives){
    Expand-Archive -Path $archive.FullName -DestinationPath $destinationarchivepath
    $testfile = (Get-ChildItem $destinationarchivepath -Recurse -File | Select-Object -first 1).name
    move-item "$destinationarchivepath\Takeout\Google Photos\*" -Destination $photodestination -Verbose
    $test = $null
    $test = get-childitem $photodestination -Recurse | where-object name -eq $testfile
    If($null -ne $test){
        rename-item $archive.FullName -NewName ($archive.FullName+".DONE")
    }
    else{
        write-warning "Test failed"
    }
}