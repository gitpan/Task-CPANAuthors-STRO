use strict;
use warnings;

use ExtUtils::MakeMaker;

my %prereq_list = qw/
    Data::Define                            1.03
    FindBin::Real                           1.05
    FTN::Address                            1.03
    FTN::Nodelist                           1.07
    Lingua::Cyrillic::Translit::ICAO        1.04
    Lingua::Multinational::Translit::ICAO   1.04
    Lingua::RU::Jcuken                      1.04
    Lingua::UK::Jcuken                      1.04
    Prompt::Timeout                         1.01
    Text::Compare                           1.03
/;

$prereq_list{'Win32::Uptime'} = '1.01' if $^O eq 'MSWin32';

WriteMakefile(
    'NAME'          => 'Task::CPANAuthors::STRO',
    'ABSTRACT'      => '"Task" for installing modules maintained by STRO',
    'AUTHOR'        => 'Serguei Trouchelle <stro@cpan.org>',
    'VERSION_FROM'  => 'STRO.pm',
    'LICENSE'       => 'perl',
    'PREREQ_PM'     => \%prereq_list,
);
