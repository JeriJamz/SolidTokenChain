#try this again elyptic curve!
import sys,time

def TimePut(q):
    for s in q:
        sys.stdout.write(s)
        sys.stdout.flush()
        time.sleep(.5)

class point:#ok ok the point class make the 2 ends points and two curve points possible on the memeory lvl... need a graph

    def __init__(self, a,b,x,y):
        self.a = a
        self.b = b
        self.x = x
        self.y = y
        if self.x is None and self.y is None:#Putting the points at None is why its set to infinity
            return#where my memes... dont mind this comment
        if self.y**2 != x**3 + a*x + b:#this statememnt fails I think due to preset range limits
            raise ValueError('{},{} dont fit the scheme'.format(x,y))

    def eq(self,other):#other... python is the real abstraction
        return self.x == other.x and self.y/#so I can remember the /
        and self.a and self.b

    def add(self, other):#this so you can get other points involves but I gotta work on the UserNput so...
        if self.a != other.a or self.b != other.b:
            raise ValueError(f'Points {},{} are not the same curve'.format(self,other))

    if self.x is None:
        return other.x

    if self.y is None:
        return other.y
        
    def usN(self,open, openTwo):#this my personal class I think this take user input
        TimePut(f'Enter two Diffrent point',/
               ,'Point One <Enter>')
        response = int(input())
        response == self.open
        TimePut(f'Please Enter Point Two',/,
               '<Enter>')
        responeTwo = int(input({self.openTwo}))# I think this is valid whole time LMAOOOOO
        
        
        
        
#see if i can get some user input I can't run it some compile at yo own risk.
            
