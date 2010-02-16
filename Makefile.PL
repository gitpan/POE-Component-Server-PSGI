
use strict;
use warnings;



use ExtUtils::MakeMaker 6.11;



my %WriteMakefileArgs = (
                       'test' => {
                                   'TESTS' => 't/*.t'
                                 },
                       'NAME' => 'POE::Component::Server::PSGI',
                       'DISTNAME' => 'POE-Component-Server-PSGI',
                       'AUTHOR' => 'Paul Driver <frodwith@cpan.org>',
                       'ABSTRACT' => 'PSGI Server implementation for POE',
                       'EXE_FILES' => [],
                       'VERSION' => '0.5',
                       'LICENSE' => 'perl',
                       'PREREQ_PM' => {
                                        'namespace::autoclean' => '0',
                                        'HTTP::Message::PSGI' => '0',
                                        'Plack' => '0',
                                        'POE::Component::Server::TCP' => '0',
                                        'ExtUtils::MakeMaker' => '6.11',
                                        'HTTP::Status' => '0',
                                        'Test::More' => '0',
                                        'POE::Filter::HTTP::Parser' => '0',
                                        'POE' => '0'
                                      }
                     );


delete $WriteMakefileArgs{LICENSE}
  unless eval { ExtUtils::MakeMaker->VERSION(6.31) };

WriteMakefile(%WriteMakefileArgs);



