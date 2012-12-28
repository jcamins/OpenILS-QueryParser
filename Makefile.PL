use 5.010000;
use ExtUtils::MakeMaker;

WriteMakefile(
    NAME            => 'OpenILS::QueryParser',
    DISTNAME        => 'OpenILS-QueryParser',
    VERSION_FROM    => 'lib/OpenILS/QueryParser.pm',
    ABSTRACT_FROM   => 'lib/OpenILS/QueryParser.pm',
    PMLIBDIRS       => [ qw( lib/ ) ],
    AUTHOR          => [
                        'Mike Rylander <miker@esilibrary.com>',
                        'Thomas Berezansky <tsbere@mvlc.org>',
                        'Jared Camins-Esakov <jcamins@cpbibliography.com>'
                        ],
    LICENSE         => 'gpl_2',
    NO_META         => 1,
    PREREQ_PM       => {
        'Test::More'=> 0,
        'JSON'      => 2.17,
    },
    dist            => {
        COMPRESS => 'gzip -9f',
        SUFFIX => 'gz',
    },
    depend          => {
        Makefile => '$(VERSION_FROM)'
    },
    clean           => { FILES => 'OpenILS-QueryParser-*' },

);

