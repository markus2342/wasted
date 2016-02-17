define component::vhost (
  $app,
  $path,
  $vhost = $title,
  $config = {},
) {
  if ( $app == 'php' ) {
    component::vhost::php { $vhost:
      path  => $path,
      vhost => $vhost,
      vhost_port  => $config['vhost_port'],
      env   => $config['env'],
    }
  }
}
