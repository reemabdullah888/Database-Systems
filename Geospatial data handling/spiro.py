import math
R=6
r=1
n=16
a=8 
t=0.00
longitude=-118.28539852258619
latitude=34.02057188462517
while t<=n*math.pi:
    x = (R+r)*math.cos((r/R)*t) - a*math.cos((1+r/R)*t)
    y = (R+r)*math.sin((r/R)*t) - a*math.sin((1+r/R)*t)
    coordinates = ''
    coordinates+=str((longitude+y*0.0005))+','+str((latitude+x*0.0005))+',0\n'
    print(coordinates)
    t=t+0.01

