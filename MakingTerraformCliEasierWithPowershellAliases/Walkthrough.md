# Basic hello-world alias+function
## Original command
```powershell
Write-Output "Hello, world"
```
## Create a basic alias
```powershell
Set-Alias -Name print -Value Write-Output
```
## Use the alias
```powershell
print "Hello, world"
```
## Create a basic function
```powershell
function write {
	param($text)
	Write-Output $text
}

write "Hello, world"
```
# Finding and updating your PowerShell profile
```powershell
# Get path to powershell profile:
$profile

# Read the text in the profile:
Get-Content $profile

# Open your profile in an editor:
code $profile

# Add an example:
Write-Output "Hi there, this is my profile! 🎉"
```
# Add useful terraform aliases to profile
## tf: shortcut/wrapper around the terraform cli
```powershell
Set-Alias -Name tf -Value terraform
```
## tfi: terraform init
```powershell
function tfi {
	tf init
}
```
> [!INFO]
> Aliases - such as `tf` can be referenced from inside of functions.
## tfp: terraform plan
```powershell
function tfp {
	tf plan
}
```
## tfv: terraform validate
```powershell
function tfv {
	tf validate
}
```
## tf11: terraform 1.1
This targets a specific version of terraform - useful when you need to work temporarily on an older codebase.
```powershell
ls "C:\tools\HashiCorp\terraform-1.1"
# Compare hard-coded version to installed version:
C:\tools\HashiCorp\terraform-1.1\terraform.exe version
tf version
Set-Alias -Name tf12 -Value "C:\tools\HashiCorp\terraform-1.1\terraform.exe"
```