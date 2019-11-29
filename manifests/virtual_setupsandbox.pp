define vosupport::virtual_setupsandbox (
  $prefix=$name,
  $group='',
  $prefix='',
  $services='',
  $static='',
  $voname='',
  $base_uid = undef,
  $group = undef,
)
{
  @vosupport::setupsandbox {$name:
    group => $group,
    voname => $voname,
  }
}
