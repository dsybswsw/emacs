#! /usr/bin/env python
# -*- coding: utf-8 -*-

__author__="Shiwei Wu <dsybswsw@gmail.com>"
__date__ ="$April 23, 2013"

import sys

def format(input_file):
    badfile=open(input_file,'rb')
    badstr=badfile.read()
    goodstr=badstr.decode('cp936').encode('utf-8')
    badfile.close()
    output_file = input_file
    goodfile=open(output_file,'wb')
    goodfile.write(goodstr)
    goodfile.close

def usage():
    print './format.py input'

def main():
    args = sys.argv
    if len(args) != 2:
        usage()
        print args
        return
    format(args[1])

if __name__ == '__main__':
    main()
