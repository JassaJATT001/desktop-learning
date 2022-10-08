clear
echo "====================================================================="
echo "Chosse one option by entering number"
echo "1. create a local group"
echo "2. create a local user"
echo "3. add member in localgroup"
echo "4. enable disable user"
echo "====================================================================="
$option = Read-Host -Prompt "Enter your option- "
if($option -eq 1){
   clear
   echo "create a local group"
   $name = Read-Host -Prompt "Enter group name- "
   $description = Read-Host -Prompt "Enter group discription- "
   New-LocalGroup -name "$name" -Description "$description"
} elseif($option -eq 2){
   clear
   echo "create a local user"
   echo "please enter new password for user when asked"
   $name = Read-Host -Prompt "Enter user name- "
   $description = Read-Host -Prompt "Enter user discription- "
   New-LocalUser -name "$name" -Description "$description"
} elseif($option -eq 3){
   clear
   echo "add member in localgroup"
   $group = Read-Host -Prompt "Enter group name- "
   $member = Read-Host -Prompt "Enter member to add in $group- "
   Add-LocalGroupMember -Group '$group' -Member "$member"
} elseif($option -eq 4){
   clear
   echo "1. disable user                   2.enable user"
   $x = Read-Host -Prompt "Enter your option- "
   if($x -eq 1){
      echo "1. disable user"
      $name = Read-Host -Prompt "Enter user name- "
      disable-localuser $name
}  elseif($x -eq 2){
      echo "2.enable user"
      $name = Read-Host -Prompt "Enter user name- "
      enable-localuser $name
}

}else {
   clear
   echo "wrong input"
}