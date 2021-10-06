#!/bin/sh

set -ev

Rscript -e "rmarkdown::render_site()"

