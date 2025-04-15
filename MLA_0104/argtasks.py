import argparse

parser=argparse.ArgumentParser()

parser.add_argument('n1',help='enter first number')
parser.add_argument('n2',help='enter second number')

parser.add_argument('--add',action='store_true',help='add two numbers')
parser.add_argument('--sub',action='store_true',help='subtract two numbers')

#parser.add_argument('word',help='enter a word')
#parser.add_argument('count',help='enter count')

args=parser.parse_args()

#print(int(args.n1)+int(args.n2))

#print(args.word*int(args.count))

if args.add:
    print(int(args.n1)+int(args.n2))
elif args.sub:
    print(int(args.n1)-int(args.n2))