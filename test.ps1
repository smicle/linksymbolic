$arg = $args.Split("");
$tmp = @();

for ($i = $arg.Length; $arg[$i] -ne '\'; $i--) {
	$tmp += $arg[$i - 1];
}

for ($i = $tmp.Length - 2; $i -ge 0; $i--) {
	$name += $tmp[$i];
}

$file = "./" + $name
$link = "./" + $name + ".ln"

for ($i = 0; $i -ne $arg.Length - $file.Length + 1; $i++) {
	$path += $arg[$i];
}

cd $path;
pwd;

$make = "ni -Path . -Name " + $link + " -Value " + $file + " -ItemType SymbolicLink";
Invoke-Expression $make;
