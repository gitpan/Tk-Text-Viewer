# Before `make install' is performed this script should be runnable with
# `make test'. After `make install' it should work as `perl test.pl'

#########################

# change 'tests => 1..5' to 'tests => last_test_to_print';

use Test;
BEGIN { plan tests => 4 };
use Tk::Text::Viewer;
use Tk;
ok(1); # If we made it this far, were ok.

#########################

# Insert your test code below, the Test module is use()ed here so read
# its man page ( perldoc Test ) for help writing this test script.
my $mw = MainWindow->new;
ok($mw); #2
#my $t1 = $mw->Scrolled('Viewer', -wrap => 'none');
my $t1 = $mw->Viewer();
ok($t1->pack(-side => 'right', -fill => 'both', -expand => 'yes')); #3
ok($t1->Load("$0")); #4
