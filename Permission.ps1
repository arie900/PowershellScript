$csv =  # Path\To\csv


$csv | foreach {
    $folder = $_.HomeDirectory
    $Answer = Read-Host = "Going to remove permission from $folder Continue?"
        if ($Answer -eq "Yes"){
    $acl = get-acl -Path $folder
    $acl.SetAccessRuleProtection($true,$false)
    set-acl -Path $folder -AclObject $acl
    }
}