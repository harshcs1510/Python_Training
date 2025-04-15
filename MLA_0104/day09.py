#commmand line args

# import sys
# #print('hello')
# print(sys.argv)

# print(sys.argv[0])
# print(sys.argv[1:])

import argparse

parser=argparse.ArgumentParser()
# parser.add_argument('name',help='enter your name') #positional
# parser.add_argument('phone',type=int,help='enter phone no')
# parser.add_argument('-a','--age',required=True,help='enter your age') #optional
# parser.add_argument('-t','--true',action='store_true')
# args=parser.parse_args()

# print(args.name)
# print(type(args.phone))
# print(args.age)
# print(args.true)

# parser.add_argument('name',nargs='?',default='abc',help='enter your name')
# parser.add_argument('colors',nargs='*',help='enter your name')
# args=parser.parse_args()

# print(args.name)
# print(args.colors)
# print(type(args.colors))

# parser.add_argument('fruit',choices=['apple','banana'],help='enter fruit') 
parser.add_argument('--limit',metavar='1-10',type=int,help='maximum value to process') 
args=parser.parse_args()

print(args.limit)