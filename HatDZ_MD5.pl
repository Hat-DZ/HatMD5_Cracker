use Digest::MD5 qw(md5 md5_hex md5_base64);

# " HH   HH     BBHHHHHBB    EEEEEEEEEEEEEE                        
# " HH   HH     BBHHHHHBB          EE
# " HHHHHHH     BB     BB          EE
# " HHHHHHH     BB~~~~~BB          EE
# " HH   HH     BB     BB          EE
# " HH   HH  #  BB     BB  #       EE

#"Welcome in This Secript For Cracking md5 Facebook by  Hat_DZ"
#"Contact As : https://www.facebook.com/FiNix19/?modal=admin_todo_tour"

system('clear');
print "
[1]>list crack md5
[2]>Auto crack md5
[3]>use MD5
[4]>Exit

";
print "====> ";
$use = <STDIN>;

if ($use == 1) {
		system('cls');
		print "Enter your file wordlist\n====> ";
		chomp($passwords = <STDIN>);
		print "\nEnter your md5 key\n====> ";
		chomp($kay = <STDIN>);
		print "\n Plize wait ...\n";
		open (LIST, $passwords) || die "\n[-] Can't find/open file $passwords\n";
		while (<LIST>) {
			chomp($_);
			$pass = md5_hex($_);
			while ($kay =~ $pass) {
				print "\n[-] password ====> \a".$_;
				print"\n\n Contact As : https://www.facebook.com/FiNix19/?modal=admin_todo_tour \n";
				exit;
			}
		}				
}
elsif ($use == 2) {
	system('clear');
	print "\nEnter your md5 key\n====> ";
	chomp($kay   = <STDIN>);
	$start = "a";
	print "\n Plize wait ...\n";
	while() { 
		$pass = ++$start;
		$password = md5_hex($pass);
		while($kay =~ $password){
			print "\n[-] password ====> \a".$pass;
			print"\n\n Contact As : https://www.facebook.com/FiNix19/?modal=admin_todo_tour \n";
			exit;
		}
	}
}
elsif ($use == 3) {
	system('clear');
	print "Enter your word\n====> ";
	chomp($ps = <STDIN>);
	$p = md5_hex($ps);
	print "\n[-] md5 key ====> \a".$p."\n";
}
elsif ($use == 4){exit;}
else {exit;}