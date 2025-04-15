import argparse

def greeting(name,lang):
    greet={
        'English':'Hello',
        'Spanish':'Hola',
        'Japanese':'Konnichiwa'
    }

    msg=f'{greet[lang]} {name}'
    print(msg)
parser=argparse.ArgumentParser('Get language from user by using cmd')

parser.add_argument('-n','--name',metavar='Name',required=True)

parser.add_argument('-l','--lang',metavar='Language',choices=['English','Spanish','Japanese'],required=True)

args=parser.parse_args()

greeting(args.name,args.lang)