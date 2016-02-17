class profile::webserver (
  $nginx  = true,
  $apache = false,
) {
  validate_bool($nginx)
  validate_bool($apache)

  contain component::additional_vhosts

  if $nginx {
    contain component::nginx
  }
  if $apache {
    contain component::apache
  }
}
