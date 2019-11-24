$arg = $args.Split("")

$tmp = @()
for ($i = $arg.Length; $arg[$i] -ne '\'; $i--) {
	$tmp += $arg[$i - 1]
}
for ($i = $tmp.Length - 2; $i -ge 0; $i--) {
	$name += $tmp[$i]
}

for ($i = 0; $i -ne $arg.Length - $name.Length; $i++) {
	$path += $arg[$i]
}

cd $path

ni -Path . -Name $("./" + $name + ".ln") -Value $("./" + $name) -ItemType SymbolicLink
