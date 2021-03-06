#
# In:
#  QHULL_ROOT (alternatively, make sure 'qhull' is on $PATH)
#
# Out:
#  QHULL_FOUND
#  QHULL_VERSION
#  QHULL_BINARY
#
# Note: includes, libs not detected, vfxgal only uses qhull via cmdlin.
#

find_program(QHULL_BINARY qhull PATHS ${QHULL_ROOT}/bin)

if(QHULL_BINARY STREQUAL "QHULL_BINARY-NOTFOUND" )
    set(QHULL_FOUND FALSE)
else(QHULL_BINARY STREQUAL "QHULL_BINARY-NOTFOUND" )
    set(QHULL_FOUND TRUE)
    execute_process(COMMAND "${QHULL_BINARY}" OUTPUT_VARIABLE _QHULL_OUT)
    string(REGEX MATCH "([0-9]+\\.[0-9]+)" QHULL_VERSION "${_QHULL_OUT}")
endif(QHULL_BINARY STREQUAL "QHULL_BINARY-NOTFOUND" )


#
# Copyright 2012, Allan Johns
#
# This file is part of vfxgal.
#
# vfxgal is free software: you can redistribute it and/or modify
# it under the terms of the GNU Lesser General Public License as published by
# the Free Software Foundation, either version 3 of the License, or
# (at your option) any later version.
#
# vfxgal is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.
#
# You should have received a copy of the GNU Lesser General Public License
# along with vfxgal.  If not, see <http://www.gnu.org/licenses/>.
#
