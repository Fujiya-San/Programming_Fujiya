# Java
# Javaとは？ ~ What is Java? ~
## 概要
Javaは1995年に[ジェームス・ゴスリン](https://ja.wikipedia.org/wiki/%E3%82%B8%E3%82%A7%E3%83%BC%E3%83%A0%E3%82%BA%E3%83%BB%E3%82%B4%E3%82%B9%E3%83%AA%E3%83%B3)によって開発された **オブジェクト指向プログラミング言語(Object Oriented Programming)** である。同年代の言語としてはPHP、Haskell、Ruby。Pythonなどがある。

## Javaの特徴
- **コンピュータに依存しない**  
Javaではプラットフォーム(実行するPCなどの環境)に依存しないアプリケーションドフとウェアの開発などが行える。  
Javaで開発されたものは堅牢な実行環境(仮想マシン)であるJava仮想マシン(Java VM)内にて実行される。  

- **オブジェクト指向プログラミング言語(OOPL)**  
Javaはオブジェクト指向プログラミングの考え方に則り設計、開発された言語であるためソフトウェアの開発の複雑さの低減、開発効率の向上、保守性などが高められている。  

- **インターネットとの関係が深い**  
Javaは現在インターネットの大規模なソフトウェアなどに広く利用されていることが多い。それはインターネットのWebページで動くプログラムを容易に書くことができるためである。

# Javaのインストールから実行まで
現在、Javaの最新バージョンは **Java SE 16** になります。
## Javaのインストール
- [Oracle JDK](https://www.oracle.com/java/technologies/javase-jdk16-downloads.html)  
- [Open JDK](https://jdk.java.net/16/)

## Javaの確認
Javaのバージョンを確認するには以下のコマンドを打ち込むことで確認できる。  
```java -version```

結果として以下のように表示されればインストールが成功している。  
```
$ java -version
java version "16.0.1" 2021-04-20
Java(TM) SE Runtime Environment (build 16.0.1+9-24)
Java HotSpot(TM) 64-Bit Server VM (build 16.0.1+9-24, mixed mode, sharing)
```

## Apache Ant(ビルドツール)のインストール
- [Apache Ant](https://ant.apache.org/bindownload.cgi)  

1. 上記のサイトより、最新版(現在は*1.10.10*)をダウンロードします。  

2. 以下の手順でダウンロードしたものを */usr/local/* に展開、*/usr/local/ant* で引けるようにします。  
```
$ sudo mkdir -p /usr/local
$ cd /usr/local/
$ sudo tar xvfz ~/Downloads/apache-ant-1.10.7-bin.tar.gz
x apache-ant-1.10.10/bin/ant
x apache-ant-1.10.10/bin/antRun
x apache-ant-1.10.10/bin/antRun.pl
x apache-ant-1.10.10/bin/complete-ant-cmd.pl
x apache-ant-1.10.10/bin/runant.pl
x apache-ant-1.10.10/bin/runant.py
8< 8< 8< 8< 8< 8< 8< 8< 8< 8< 8< 中略 8< 8< 8< 8< 8< 8< 8< 8< 8< 8< 8< 8<
x apache-ant-1.10.10/manual/tutorial-writing-tasks-src.zip
x apache-ant-1.10.10/manual/tutorial-writing-tasks.html
x apache-ant-1.10.10/manual/tutorials.html
x apache-ant-1.10.10/manual/using.html
x apache-ant-1.10.10/manual/usinglist.html
x apache-ant-1.10.10/patch.xml
$ sudo rm -f ant ; sudo ln -s ./apache-ant-1.10.7 ant
```
3. 展開したものが開けるかどうかを確認します。
```
$ cd /usr/local/ant/
$ pwd
/usr/local/ant
$ ls -la
total 920
-rw-r--r--@  1 root  wheel    6833  4 12 12:27 CONTRIBUTORS
-rw-r--r--@  1 root  wheel     138  4 12 12:27 INSTALL
-rw-r--r--@  1 root  wheel   95790  4 12 12:27 KEYS
-rw-r--r--@  1 root  wheel   15291  4 12 12:27 LICENSE
-rw-r--r--@  1 root  wheel     306  4 12 12:27 NOTICE
-rw-r--r--@  1 root  wheel    4371  4 12 12:27 README
-rw-r--r--@  1 root  wheel  262337  4 12 12:27 WHATSNEW
drwxr-xr-x@ 15 root  wheel     480  6  4 11:43 bin
-rw-r--r--@  1 root  wheel   34453  4 12 12:27 contributors.xml
drwxr-xr-x@ 15 root  wheel     480  4 12 12:27 etc
-rw-r--r--@  1 root  wheel   14195  4 12 12:27 fetch.xml
-rw-r--r--@  1 root  wheel    4446  4 12 12:27 get-m2.xml
drwxr-xr-x@ 55 root  wheel    1760  4 12 12:27 lib
drwxr-xr-x@ 50 root  wheel    1600  4 12 12:27 manual
-rw-r--r--@  1 root  wheel    1916  4 12 12:27 patch.xml
```

4. Pathの設定  
ログインディレクトリ直下の *~/.bash_profile* にコマンドサーチパスを書き込みます。
```
export _JAVA_OPTIONS="-Dfile.encoding=UTF-8"
export ANT_HOME="/usr/local/ant"
PATH=$PATH:$ANT_HOME/bin
export ANT_OPTS="-Dfile.encoding=UTF-8 -Xmx512m -Xss256k"
```
その後、設定を反映させます。  
`exec $SHELL -l`  

5. 確認
```
$ ant -version
Picked up _JAVA_OPTIONS: -Dfile.encoding=UTF-8
Apache Ant(TM) version 1.10.10 compiled on April 12 2021
```
## Java SE API
https://docs.oracle.com/en/java/javase/16/docs/api/index.html

