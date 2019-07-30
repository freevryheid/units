# units
postgresql extension to convert between different units

# why
* learning/experimenting with writing psql extensions

# installation
* git clone https://github.com/freevryheid/units.git
* cd units
* sudo make install
* psql
* create extension units;
* select unitsconvert(1,'mile',meter');

# uninstall
* psql
* drop extension units;
* \q
* sudo rm /usr/share/postgresql/extension/units*

# license
* none
