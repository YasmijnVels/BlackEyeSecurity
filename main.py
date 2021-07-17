#!/usr/bin/python3

# 2020
# The BlackEyeSecurity Toolkit was programmed and developed by Yasmijn.
# The BlackEyeSecurity Toolkit is published under the MIT Licence.
# The BlackEyeSecurity Toolkit is based on the CLIF-Framework.
# The CLIF-Framework is programmed and developed by Yasmijn.
# The CLIF-Framework is published under the MIT Licence.

# This script is a shortcut for everyone who does not want to install BlackEyeSecurity to the bin path.

from importlib import import_module
from sys import path

path.insert(1, "./BlackEyeSecurity/")
main = import_module("BlackEyeSecurity.main")

main.run()
