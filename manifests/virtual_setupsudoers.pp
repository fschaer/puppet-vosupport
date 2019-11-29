define vosupport::virtual_setupsudoers (
  $prefix=$name,
  $number,
  $start=1,
  $digits=3,
  $voname='',
  $base_uid = undef,
  $group = undef,
)
{
  @vosupport::setupsudoers {$name:
    prefix => $prefix,
    number => $number,
    start  => $start,
    digits => $digits,
    voname => $voname,
  }
}
