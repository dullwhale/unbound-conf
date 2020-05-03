# unbound-conf
自分用unbound設定ファイルのリポジトリ
## インストール方法
`git clone`して中の`install.sh`を叩くと/etc/unbound以下に設定ファイルが配置される
## ブロックするドメインの設定を生成する
ブロックするドメインのリストが`domain-list.txt`だとして、次のようにして設定を生成できる。
```
cat domain-list.txt | ./sanitize.sh | ./domain-to-backlist.sh
```
あとは適当なファイルにリダイレクトして./unbound/unbound.conf.d/以下に配置する
## unboundが起動しないとき
`unbound-control-setup`コマンドを叩いてみる
## note
/etc/unboundにsymlinkを張る方法では起動できないのでcp -rによるファイルの配置方法をとっている。
おそらくunboundは起動時に設定ファイルの実態のパスが、確かに/etc/unboundに以下に存在するかをチェックしている。
