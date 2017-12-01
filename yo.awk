#################################
#	Created by Alexis MORTELIER	#
#		All Right Reserved		#
#################################

function transforme(ip){
	split (ip,tab,".");
	res=(tab[1]*256^3) + (tab[2]*256^2) + (tab[3]*256^1) + (tab[4]*256^0)
	return res
}

BEGIN {
	print "IPv4 : de la notation décimal à point vers le numéro d'identification";
	FS = ","
	test=ARGV[1]
	ARGC--
}
{

	if ($1 == transforme(test) )
	{ print $7 }
	
}
