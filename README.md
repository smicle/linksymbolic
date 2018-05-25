# linksymbolic
右クリックからsymboliclinkが作れるようになります！

ファイルを右クリックしてlinksymbolicをクリックするだけ

## 作者が世界最弱なので手動で設定
最初にregeditを開いて /HKEY_CLASSES_ROOT/****/shell/ に /linksymbolic/command を作成します。

次にデータを"linksymbolicのリポジトリのパス/run.bat" "%1"に修正します。

例 "C:\git\linksymbolic\run.bat" "%1"
