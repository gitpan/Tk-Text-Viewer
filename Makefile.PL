use ExtUtils::MakeMaker;
# See lib/ExtUtils/MakeMaker.pm for details of how to influence
# the contents of the Makefile that is written.
WriteMakefile(
    'NAME'        => 'Tk::Text::Viewer',
    'VERSION_FROM'    => 'Viewer.pm', # finds $VERSION
    'PREREQ_PM'        => {'Tk'             => 800.004}, 
    'EXE_FILES'    =>     => ['scripts/viewer.pl'],
    'dist' => { COMPRESS=>"gzip", SUFFIX=>".gz", DIST_DEFAULT => 'all tardist'},
    ($] >= 5.005 ?    ## Add these new keywords supported since 5.005
      ('ABSTRACT' => 'Read only Tk Text Widget with search capability',
       AUTHOR     => 'Oded S. Resnik <razinf at cpan.org>') : ()),
);
