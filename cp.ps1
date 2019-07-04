﻿﻿$source = "\\mhs-13\d$\Users\fatma.guler\"
$destination = "c:\Users\public\documents"
$since = (Get-date).AddDays(-1165)
$includes ="*.pdf,*.xls*,*.doc*,*.txt,*.lnk,*.msg"
$items = get-childitem $source -recurse -include $includes | where-object {$_.LastAccessTime -gt $since}
foreach ($item in $items)
{
Copy-Item -Force -path $item.FullName -destination $destination
}