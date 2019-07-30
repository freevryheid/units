# units
postgresql extension to convert between different units

# installation
git clone https://github.com/freevryheid/units.git
cd units
sudo make install
psql
create extension units
unitsconvert(1,'mile',meter')

# uninstall
psql
drop extension units
sudo rm /usr/share/postgresql/extension/units*

# contribute
yes please

