class component::additional_vhosts (
  $vhosts = hiera_hash('additional_vhosts'),
) {
  create_resources ( component::vhost, $vhosts )
}
