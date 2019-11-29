class vosupport::vo_sudoers {
  $poolaccounts = lookup('vosupport::poolaccounts', { 'default_value' => undef })
  create_resources('vosupport::virtual_setupsudoers',$poolaccounts)
}
