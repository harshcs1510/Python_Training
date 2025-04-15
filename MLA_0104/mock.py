def make_readable(seconds):

    if(seconds>359999 or seconds<0):
        raise ValueError("seconds should be betweem 0 and 359999")

    hh=0
    mm=0
    ss=0

    hh=seconds//3600
    mm=(seconds%3600)//60
    ss=seconds%60

    return f'{hh:02}:{mm:02}:{ss:02}'

print(make_readable(84000))