#Git config for multiple accounts

* generate key
* add key to ssh-agent via .bashrc using ssh-add (or do manually in session when that account is needed)

```
ssh-keygen -t rsa -b 4096 -C "your_email@example.com"
    filename: /c/Users/myusername/.ssh/id_rsa_shorthandforuser
```

~/.ssh/config
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

example usage
```
git clone git@github.com-user2:someusername/somerepository.git
```

