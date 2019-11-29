define vosupport::enable_lcgdm_vo (
   $voname=$name,
   $unprivilegedmkgridmap=false,
   $gridservice="LFC"
)
{
   $vomappingdata = lookup('vosupport::mappings', { 'default_value' => undef })
   $poolaccounts  = lookup('vosupport::poolaccounts', { 'default_value' => undef })
   $vomsservers   = lookup('vosupport::vomsservers', { 'default_value' => undef })
   $configfile    = "/etc/lcgdm-mkgridmap.conf"

   concat::fragment{"${voname}_lcgdmmkgridmapconf":
     target  => $configfile,
     order   => "08",
     content => template('vosupport/lcgdm-mkgridmap.conf.erb'),
   }

}

