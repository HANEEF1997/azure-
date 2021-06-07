# installing and connecting azure
Install-Module -name azureAD
get-module azuread
Connect-AzureAD

# getting the user who are in azure
get-azureaduser

# filtering the user by letters
get-azureaduser -filter "startswith(givenName,'a')"

# creating new user in azure
#first create password
$userspassword = new-object -TypeName Microsoft.Open.AzureAD.Model.PasswordProfile
$userspassword.Password = "delta98741!"


New-AzureADUser -DisplayName "shaik" -PasswordProfile $userspassword -UserPrincipalName shaikhaneef42@gmail.com -MailNickName "shaikhaneef1997"