use 5.006;
use strict;
use warnings FATAL => 'all';
use Module::Build;

my $builder = Module::Build->new(
    module_name         => 'App::IRCBot::NewYears',
    license             => 'Artistic_2_0',
    dist_author         => q{Zoffix Znet <zoffix@cpan.org>},
    dist_version_from   => 'lib/App/IRCBot/NewYears.pm',
    release_status      => 'stable',
    configure_requires => {
        'Module::Build' => 0,
    },
    build_requires => {
        'Test::More' => 0,
    },
    requires => {
        'Data::Dumper'                                   => 2.136,
        'DateTime'                                       => 1.03,
        'Date::Manip'                                    => 6.36,
        'Number::Denominal'                              => 1.102,
        'Encode'                                         => 2.55,
        'POE'                                            => 1.354,
        'POE::Component::IRC'                            => 6.83,
        'POE::Component::IRC::Plugin::WWW::Google::Time' => 0.0102,
        'POE::Component::IRC'                            => 6.83,
        'POE::Component::IRC::Plugin::Connector'         => 6.83,
        'POE::Component::IRC::Plugin::BotAddressed'      => 6.83,

        perl    => '5.010',
    },
    add_to_cleanup     => [ 'App-IRCBot-NewYears-*' ],
    create_makefile_pl => 'traditional',
);
if ( $ENV{RELEASE_TESTING} ) {
    system('pod2text lib/App/IRCBot/NewYears.pm > README');
}
$builder->create_build_script();
