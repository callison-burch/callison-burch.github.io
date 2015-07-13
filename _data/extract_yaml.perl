$abstract = "";
$bibtex = "";
while($line = <>) {
    if ($line =~ m/<a href\s*=\s*"(publications\/.*.pdf)"\s*>(.*)<\/a>\.(.*)\.\s*([^<]*)\./i) {
	print "-\n";
	$url = $1;
	$title = $2;
	$authors = $3;
	$venue = $4;
	
	# Strip "In ..."
	$venue =~ s/\s*In\s*//g;

	$url =~ m/publications\/(.*).pdf/;
	$id = $1;

	# find the year
	$line =~ m/(2\d\d\d)/;
	$year = $1;

	# escape colons with their HTML equivalent 
	$title =~ s/:/&colon;/g;

	if($venue =~ m/\((.*)\)/) {
	    $venue = $1;
	}

	# remove the "Proceedings of" decorator
	$venue =~ s/Proceedings of\s*//;
	$venue =~ s/Proceedings\s*//;

	# strip numbers from WMT
	$venue =~ s/WMT\d\d/WMT/;

	# remove the year from the venue
	$venue =~ s/-\d\d\d\d//g;
	$venue =~ s/\s+\d\d\d\d//g;

	$venue =~ s/Text-To-Text/Workshop on Monolingual Text-To-Text Generation/;

	#clean up slide matches
	if ($venue =~ m/(^.*)\.\s+<a/) {
	    $venue = $1;
	}

	# clean the authors list
	$authors =~ s/.\s*\d\d\d\d//g;
	$authors =~ s/^\s*//g;
	$authors =~ s/\s*$//g;

	# trim space
	$title =~ s/^\s*//g;
	$title =~ s/\s*$//g;
	$authors =~ s/^\s*//g;
	$authors =~ s/\s*$//g;
	$venue =~ s/^\s*//g;
	$venue =~ s/\s*$//g;

	$type = "???";
	if($venue eq "Computational Linguistics") {
	    $type = "journal";
	} elsif($venue eq "TACL") {
	    $type = "journal";
	} elsif($venue eq "PBML") {
	    $type = "journal";
	} elsif ($venue eq "ACL") {
            $type = "conference";
	} elsif ($venue eq "NAACL") {
            $type = "conference";
	} elsif ($venue eq "EACL") {
            $type = "conference";
	} elsif ($venue eq "EMNLP") {
            $type = "conference";
	} elsif ($venue eq "CoNLL") {
            $type = "conference";
	} elsif ($venue eq "CoLing") {
            $type = "conference";
	} elsif ($venue eq "EAMT") {
            $type = "workshop";
	} elsif ($venue eq "LREC") {
            $type = "conference";
	} elsif ($venue eq "AMTA") {
            $type = "conference";
	} elsif ($venue eq "MT Summit") {
            $type = "conference";
	} elsif ($venue eq "*SEM") {
            $type = "conference";
	} elsif ($venue eq "STARSEM") {
            $type = "conference";
	} elsif ($venue eq "HCOMP") {
            $type = "conference";
	} elsif ($venue =~ m/CSCW/) {
            $type = "conference";
	} elsif ($venue =~ m/WMT/) {
            $type = "workshop";
	} elsif ($venue eq "GEMS") {
            $type = "workshop";
	} elsif ($venue eq "BUCC") {
            $type = "workshop";
	} elsif ($venue =~ m/Workshop/i) {
            $type = "workshop";
	} elsif ($venue eq "SemEval") {
            $type = "workshop";
        } elsif ($venue eq "IWSLT") {
            $type = "workshop";
        } elsif ($venue =~ m/ASLIB/) {
            $type = "workshop";
        } elsif ($venue =~ m/CLUK/) {
            $type = "workshop";
	} elsif ($venue =~ m/poster/i) {
            $type = "workshop";
	} elsif ($venue eq "HLTCOE") {
            $type = "report";
	} elsif ($venue =~ m/thesis/i) {
            $type = "thesis";
	} elsif ($venue =~ m/editor/i) {
            $type = "chapter";
	} elsif ($venue =~ m/unpublished/i) {
            $type = "unpublished";
	}
	print "   title: $title\n";
	print "   authors: $authors\n";
	print "   venue: $venue\n";
	print "   type: $type\n";
	print "   year: $year\n";
	print "   url: $url\n";
	print "   id: $id\n";
    } elsif ($line =~ m/<div id="abstract/i) {
	# grab the abstract
	while(!($line =~ m/<\/div>/i)) {
	    $abstract = $abstract . $line . " ";
	    $line = <>;
	}
	# print non-empty abstracts
	if(!($abstract =~ m/^\s*$/)) {
	    # strip HTML tags
	    $abstract =~ s/<[^>]*>\s*//g;
	    # clean some formatting
	    $abstract =~ s/\n\n/<br \/>/g;
	    $abstract =~ s/\s+/ /g;
	    $abstract =~ s/:/&colon;/g;
	    print "   abstract: ";
	    print $abstract . "\n";
	    $abstract = "";	
	}
    } elsif($line =~ m/<pre>/i) {
	# grab the bibtex
	$line = <>;
	while(!($line =~ m/<\/pre>/i)) {
	    $bibtex = $bibtex . $line . " ";
	    $line = <>;
	}
	# print non-empty bibtexs
	if(!($bibtex =~ m/^\s*$/)) {
	    $bibtex =~ s/<[^>]*>//g;
	    # add indent level
	    $bibtex =~ s/^\s+//g;
	    $bibtex =~ s/\n/\n      /g;
	    $bibtex =~ s/publications\/publications/publications/;
	    print "   bibtex: |\n      ";
	    print $bibtex . "\n";
	    $bibtex = "";	
	}
    }

}
