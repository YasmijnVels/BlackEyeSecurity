#!/usr/bin/python3

# 2020
# The BlackEyeSecurity Toolkit was programmed and developed by Yasmijn.
# The BlackEyeSecurity Toolkit is published under the MIT Licence.
# The BlackEyeSecurity Toolkit is based on the CLIF-Framework.
# The CLIF-Framework is programmed and developed by Yasmijn.
# The CLIF-Framework is published under the MIT Licence.

from sys import argv

from CLIF_Framework.framework import console, module  # noqa: I900


def run():
	main_console = console()
	main_console.rsversion = "4.1 (Pre)"
	main_console.user_argv = argv

	module("modules.main", main_console)

	main_console.run()


if __name__ == "__main__":
	run()
