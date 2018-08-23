# configuration for apache
write-host "
***** Configuring Apache ******
";

# Configure apache to serve up laravel
$DEFAULTWEBROOT = 'DocumentRoot "${SRVROOT}/htdocs"
<Directory "${SRVROOT}/htdocs">';
$LARAVELWEBROOT = 'DocumentRoot "${SRVROOT}/htdocs/public"
<Directory "${SRVROOT}/htdocs//public">';

$apacheConf = "$(scoop which httpd | split-path)\httpd.conf";

sed -i -e 's/$DEFAULTWEBROOT/$LARAVELWEBROOT/g" $apacheConf;

write-host "
***** Web directory changed to $LARAVELWEBROOT ******
";

httpd -k restart;
