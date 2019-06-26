#!/usr/bin/env python

import sys
from gmusicapi import Musicmanager

mm = Musicmanager()
# second parameter is the MAC address of the machine that was used to generate the oauth.cred.
mm.login('/config/oauth.cred', '9C:B6:D0:D0:CE:1D')
mm.upload("/files/" + sys.argv[1])

