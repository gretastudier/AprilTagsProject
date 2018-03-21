#!/usr/bin/env python

import os
from datetime import date
from distutils.core import setup
from distutils.debug import DEBUG

from _pods.version import PODS_VERSION

def find_package_data(basedir, prefix):
    h = []
    for root, dirs, files in os.walk(basedir):
        if ".svn" in root:
            continue
        troot = root[len(prefix):]
        if files:
            h.extend([ os.path.join(troot, f) for f in files ])
    return h

setup(name='Pods',
        version=PODS_VERSION,
        description='Pods utilities',
        packages = [ '_pods', '_pods.data' ],
        scripts = [ 'pods' ],
        package_data = { '_pods': find_package_data('_pods/data', '_pods/') })

