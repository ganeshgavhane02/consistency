$date = (Get-Date).ToString('yyyy-MM-dd')
$dir = "entries"
$file = Join-Path $dir "$date.md"

New-Item -ItemType Directory -Force -Path $dir | Out-Null

if (Test-Path $file) {
    Write-Host "Entry already exists: $file"
    exit 0
}

$content = @"
# Daily Learning - $date

Date: $date

Summary:

What I learned today:

- 

Code samples:

```js
// Add code here
```

Images:

- Add images to `entries/images/$date/` and reference here: ![example](images/$date/example.png)
"@

Set-Content -Path $file -Value $content -Encoding UTF8
Write-Host "Created: $file"
