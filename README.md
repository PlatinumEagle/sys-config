# Git config for multiple accounts

## generate key
```
ssh-keygen -t rsa -b 4096 -C "your_email@example.com"
    filename: /c/Users/myusername/.ssh/id_rsa_shorthandforuser
```

## ~/.ssh/config
```
#user1 account
Host github.com-user1
    HostName github.com
    User git
    IdentityFile ~/.ssh/id_rsa_user1

#user2 account
Host github.com-user2
    HostName github.com
    User git
    IdentityFile ~/.ssh/id_rsa_user2
```

## add key to ssh-agent (can include it in .bashrc)
```
ssh-add ~/.ssh/id_rsa_shorthandforuser
```

## example usage
```
git clone git@github.com-user2:someusername/somerepository.git
```

