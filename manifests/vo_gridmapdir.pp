#initialize VO gridmapdir virtual resources
class vosupport::vo_gridmapdir()
{
  
  $poolaccounts = lookup('vosupport::poolaccounts', { 'default_value' => undef })
  create_resources('vosupport::virtual_setupgridmapdir',$poolaccounts, {gridmapdir => '/etc/grid-security/gridmapdir'})
}
