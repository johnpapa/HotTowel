# Generate a text file of VSIX Manifest <Asset> elements for every file in this directory 
# and its subdirectories
$File = "VsixAssetList.txt"
$prefix =  "<Asset Type=`"Microsoft.VisualStudio.Mvc.Templates`" d:Source=`"File`" Path=`""
$root = $(get-location).ToString()
$len = $root.IndexOf("ProjectTemplates")
$suffix = "`" />"
#get-childitem -include *.* -recurse | format-table Name -hidetableheaders | out-file $file
get-childitem -recurse | 
where { $_.GetType().Name -eq "FileInfo" } | 
where { $_.Name.IndexOf('VsixAssetList') -ne 0 } |
foreach-object -process { 
    $name = $_.FullName.Substring($len) 
    $prefix + $name + $suffix 
} | out-file $file