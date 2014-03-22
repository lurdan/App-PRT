package PRT::Command::Help;
use strict;
use warnings;
use PPI;

sub new {
    my ($class) = @_;
    bless {}, $class;
}

sub handle_files { 0 }

sub parse_arguments {
    my ($self, @args) = @_;
    # NOP
    @args;
}

sub execute {
    my ($self) = @_;

    print $self->help_message;
}

sub help_message {
    return <<HELP;
usage: prt <command> <args>
HELP
}


1;
