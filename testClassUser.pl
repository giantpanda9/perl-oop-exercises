#!/usr/bin/perl
use strict;
BEGIN { unshift @INC, '.'; }

use TestClass;
use TestClassChild;

my $test = TestClass->new();
my $testChild = TestClassChild->new();
print $test->getName() . "\n";
print $test->getAPLUSB(1,2) . "\n";
print $test->getAPLUSBFloat(1.2,2.5) . "\n";
print $testChild->getName() . "\n";
print $testChild->getNameSurname() . "\n";
print $testChild->getSurname() . "\n";
print $testChild->getAPLUSB(1,2) . "\n";
