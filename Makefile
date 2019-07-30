EXTENSION = units       # the extensions name
DATA = length.csv
DATA = units--0.0.1.sql  # script files to install
# postgres build stuff
PG_CONFIG = pg_config
PGXS := $(shell $(PG_CONFIG) --pgxs)
include $(PGXS)
