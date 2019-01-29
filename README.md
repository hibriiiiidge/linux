# linuxのしくみ

## Docker image を build する

```
$ docker build -t ubuntu:linux_practice .
```

## Docker を起動させる

```
$ docker run -it --security-opt seccomp:unconfined -p 8081:8080 -v ~/linux_practice/app:/var/www/app ubuntu:linux_practice
```

- `--security-opt seccomp:unconfined` で `strace` コマンドが実行できる
- `~/linux_practice/app:/var/www/app` で hosts と container を同期させる

## 止まっているコンテナを再起動させる

```
$ docker start #{ image name }
``` 

## コンテナに入る

```
$ docker attach #{ image name}
```

## 再起動とコンテナに入るのを同時に実行 (不安定)

```
$ docker start -a #{ image name }
```

## コンテナ削除

```
$ docker rm #{ container id }
```

## イメージ一覧

```
$ docker images
```

## イメージ削除

```
$ docker rmi #{ image id }
```

## イメージ強制削除

```
$ docker rmi #{ image name }:#{ tag name }
```
