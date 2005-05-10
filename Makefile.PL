use 5.008;
use ExtUtils::MakeMaker;
WriteMakefile(
	NAME				=> 'Config::YUM',
	VERSION_FROM		=> 'lib/Config/YUM.pm',
	PREREQ_PM			=> {
							RPM2 => 0,
							LWP::UserAgent => 0,
							FreezeThaw => 0,
							Config::IniHash => 0,
							Hash::Merge => 0,
							File::Temp => 0,
							File::Remove => 0,
							XML::LibXML => 0,
							Sort::Versions => 0,
							PerlIO::gzip => 0,
						},
	($] >= 5.005 ?
		(ABSTRACT_FROM	=> 'lib/Config/YUM.pm',
		AUTHOR			=> 'Oliver Falk <oliver@linux-kernel.at>') : ()),
	dist				=> {
		COMPRESS => 'gzip --force --best'
	},
);
