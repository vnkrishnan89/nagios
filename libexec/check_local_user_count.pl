#!/usr/bin/perl
$critical_limit=$ARGV[1];
$warning_limit=$ARGV[0];
$user_count=`cat /etc/passwd | wc -l`;
if ($user_count > $critical_limit)
{
print "[Critical]\n";
exit 2;
}
elsif ($user_count > $warning_limit)
{
print "[Warning]\n";
exit 1;
}
elsif ($user_count < $warning_limit)
{
print "[OK]\n";
exit 0;
}
else
{
print "[UNKNOWN]\n";
exit 3;
}

