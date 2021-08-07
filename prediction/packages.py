#!/usr/bin/env python3
import pip


class PackagesInspector:
    def __init__(self, package):
        self.package = package
        self.get(package=package)

    def get(self, package):
        try:
            __import__(package)
            print(package, "Existed")
        except ImportError:
            pip.main(['install', package])
