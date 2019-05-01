A PPA repository for my packages:

- [joincap](https://github.com/assafmo/joincap)
- [xioc](https://github.com/assafmo/xioc)
- [SQLiteQueryServer](https://github.com/assafmo/SQLiteQueryServer)

# Usage

```bash
curl -s --compressed https://assafmo.github.io/ppa/ubuntu/KEY.gpg | sudo apt-key add -
sudo curl -s --compressed -o /etc/apt/sources.list.d/assafmo.list https://assafmo.github.io/ppa/ubuntu/assafmo.list
sudo apt update
sudo apt install joincap xioc sqlitequeryserver
```

# Sources

- https://makandracards.com/makandra/37763-gpg-extract-private-key-and-import-on-different-machine
- http://blog.jonliv.es/blog/2011/04/26/creating-your-own-signed-apt-repository-and-debian-packages/
- https://medium.com/sqooba/create-your-own-custom-and-authenticated-apt-repository-1e4a4cf0b864
- https://github.com/tagplus5/vscode-ppa
