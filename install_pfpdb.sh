#!/bin/bash
#
# pfpsim-installer: Graphical installer for the PFPSim Framework
#
# Copyright (C) 2016 Concordia Univ., Montreal
#     Samar Abdi
#     Umair Aftab
#     Gordon Bailey
#     Faras Dewal
#     Shafigh Parsazad
#     Eric Tremblay
#
# Copyright (C) 2016 Ericsson
#     Bochra Boughzala
#
# This program is free software; you can redistribute it and/or
# modify it under the terms of the GNU General Public License
# as published by the Free Software Foundation; either version 2
# of the License, or (at your option) any later version.
#
# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.
#
# You should have received a copy of the GNU General Public License
# along with this program; if not, write to the Free Software
# Foundation, Inc., 51 Franklin Street, Fifth Floor, Boston, MA
# 02110-1301, USA.
#


echo "Installing pfpdb..."

sudo apt-get install -y python
sudo apt-get install -y python-setuptools
sudo apt-get install -y python-dev libssl-dev libffi-dev python-pip
sudo pip install protobuf
sudo pip install cffi --upgrade # required for debian 8.3x for nnpy bindings to compile
sudo pip install nnpy
sudo pip install tabulate



#sudo ./get-PFPDB.py "v1.0.0" --latest

./get-PFPDB.py "v1.0.0" --source --latest
tar -xzf pfpdbsource.tar.gz 
cd pfpsim-pfpdb-*
sudo python setup.py install
cd ../

echo "Done installing pfpdb."
