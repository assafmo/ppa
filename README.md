A PPA repository for my packages:

- [joincap](https://github.com/assafmo/joincap)
- [xioc](https://github.com/assafmo/xioc)
- [SQLiteQueryServer](https://github.com/assafmo/SQLiteQueryServer)

# Usage

```bash
curl -fsSL https://assafmo.github.io/ppa/ubuntu/KEY.gpg | sudo gpg --dearmor -o /usr/share/keyrings/assafmo-archive-keyring.gpg
echo "deb [signed-by=/usr/share/keyrings/assafmo-archive-keyring.gpg] https://assafmo.github.io/ppa/ubuntu ./" | sudo tee /etc/apt/sources.list.d/assafmo.list
sudo apt update
sudo apt install joincap xioc sqlitequeryserver
```

# Sources

- https://assafmo.github.io/2019/05/02/ppa-repo-hosted-on-github.html
- https://makandracards.com/makandra/37763-gpg-extract-private-key-and-import-on-different-machine
- http://blog.jonliv.es/blog/2011/04/26/creating-your-own-signed-apt-repository-and-debian-packages/
- https://medium.com/sqooba/create-your-own-custom-and-authenticated-apt-repository-1e4a4cf0b864
- https://github.com/tagplus5/vscode-ppa
