#groups
import argparse

parser=argparse.ArgumentParser()

# login_group=parser.add_argument_group('Login Data')
# login_group.add_argument('-u','--user',help='enter user name')
# login_group.add_argument('-p','--password',help='enter user password')

# personal_data=parser.add_argument_group('Personal Data')
# personal_data.add_argument('-n','--name',help='Enter Name')
# personal_data.add_argument('-a','--age',help='Enter Age')

# args=parser.parse_args()

group=parser.add_mutually_exclusive_group(required=True)
group.add_argument('--upload',action='store_true',help='Upload a file')
group.add_argument('--download',action='store_true',help='Download a file')

args=parser.parse_args()

if args.upload:
    print("Uploading...")
elif args.download:
    print("Downloading...")