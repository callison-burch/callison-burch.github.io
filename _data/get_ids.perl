while($line = <>) {
    if($line =~ m/publications\/(.*?).pdf/i) {
	$id = $1;
	print "   id: $id\n";
    }
}
