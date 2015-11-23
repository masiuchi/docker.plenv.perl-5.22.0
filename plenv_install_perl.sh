#!/usr/bin/env sh

PLENV_VERSION=${1:-$PLENV_VERSION}
PLENV_INSTALL_OPTION=${2:-$PLENV_INSTALL_OPTION}

echo "Installing Perl $PLENV_VERSION via plenv"

## Ideally, would like to use "plenv shell" instead of "plenv global", but
## this bug prevents this: https://github.com/tokuhirom/plenv/issues/42
## basically "plenv shell" does not work with "sh -c"

plenv install $PLENV_VERSION $PLENV_INSTALL_OPTION       && \
plenv global $PLENV_VERSION                              && \
plenv install-cpanm                                      && \
plenv rehash                                             && \
rm -rf /usr/local/plenv/build/* /root/.cpanm/;
