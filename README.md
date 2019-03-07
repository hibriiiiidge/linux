# [Linuxのしくみ](https://www.amazon.co.jp/%E8%A9%A6%E3%81%97%E3%81%A6%E7%90%86%E8%A7%A3-Linux%E3%81%AE%E3%81%97%E3%81%8F%E3%81%BF-%E5%AE%9F%E9%A8%93%E3%81%A8%E5%9B%B3%E8%A7%A3%E3%81%A7%E5%AD%A6%E3%81%B6OS%E3%81%A8%E3%83%8F%E3%83%BC%E3%83%89%E3%82%A6%E3%82%A7%E3%82%A2%E3%81%AE%E5%9F%BA%E7%A4%8E%E7%9F%A5%E8%AD%98-%E6%AD%A6%E5%86%85-%E8%A6%9A/dp/477419607X)



## Docker image を build する

```
$ docker build -t ubuntu:linux_structure .
```

## Docker を起動させる

```
$ docker run -it --security-opt seccomp:unconfined -p 8081:8080 -v ~/linux_structure/app:/var/www/app ubuntu:linux_structure
```

- `--security-opt seccomp:unconfined` で `strace` コマンドが実行できる
- `~/linux_structure/app:/var/www/app` で hosts と container を同期させる

## 止まっているコンテナを再起動させる

```
$ docker start #{image name}
``` 

## コンテナに入る

```
$ docker attach #{image name}
```

## その他の Docker コマンド

### 再起動とコンテナに入るのを同時に実行 (不安定)

```
$ docker start -a #{image name}
```

### コンテナ削除

```
$ docker rm #{container id}
```

### イメージ一覧

```
$ docker images
```

### イメージ削除

```
$ docker rmi #{image id}
```

### イメージ強制削除

```
$ docker rmi #{image name}:#{tag name}
```
