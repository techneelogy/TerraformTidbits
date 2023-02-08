Write-Output "Hi there, this is my profile! 🎉"

Set-Alias -Name tf -Value terraform

function tfi {
    tf init
}

function tfp {
    tf plan
}

function tfv {
    tf validate
}

Set-Alias -Name tf11 -Value "C:\tools\HashiCorp\terraform-1.1\terraform.exe"