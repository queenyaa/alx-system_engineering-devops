# too many files error in /var/log/nginx/error.log

exec { 'fix--for-nginx':
  command => 'sed -i "s/15/12000/" /etc/default/nginx && sudo service nginx restart',
  path    =>'/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:/usr/local/games',
}
