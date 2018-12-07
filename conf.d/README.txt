Link the config snippets you would like to use in here. You probably
want at least the env and the base conf, and perhaps some host-specific conf.

E.g.:
  ln -s ../conf.avail/{00-env,50-base}.conf ./
  ln -s ../host/akindestam-suse/*.conf ./
