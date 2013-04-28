#! /usr/bin/env python
# -*- coding: utf-8 -*-

__author__="Shiwei Wu <dsybswsw@gmail.com>"
__date__ ="$April 23, 2013"

import sys

def format(input_file, output_file):
    badfile=open(input_file,'rb')
    badstr=badfile.read()
    goodstr=badstr.decode('cp936').encode('utf-8')
    goodfile=open(output_file,'wb')
    goodfile.write(goodstr)
    badfile.close()
    goodfile.close

def usage():
    print './format.py input output'

def main():
    args = sys.argv
    if len(args) != 3:
        usage()
        return
    format(args[1], args[2])

if __name__ == '__main__':
    main()

