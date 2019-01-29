FROM ubuntu:16.04

RUN apt-get update && \
    # -y で全て yes と答える
    apt-get install -y \
            sudo \
            # GCC、make、GDBなどを補助するツール
            binutils \
            # C/C++標準開発ツール一式: C/C++コンパイラ、Make等の標準開発ツール一式入ったパッケージ
            build-essential \
            # ディスクI/Oの状態を表示できるコマンド (sar)
            sysstat \
            # Linuxのデバッグユーティリティであり、プログラムが使用するシステムコールおよび受け取るシグナルを監視するコマンド
            strace \
            vim

ENV HOME=/var/www/app
WORKDIR $HOME

ENV APP_ROOT=/var/www
VOLUME $APP_ROOT

COPY app $APP_ROOT/app
