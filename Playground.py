#try this again elyptic curve!
#im testing stuff so expect bugs
#i dont remember pprint wait for the next version LMAO
import sys,time,pprint

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
        return self.x == other.x and self.y == other.y/#so I can remember the /
        and self.a == other.a and self.b == other.b and self.s == other.s 

    def add(self,other,open,openTwo):#this so you can get other points involves but I gotta work on the UserNput so...
        if self.a != other.a or self.b != other.b:
            raise ValueError(f'Points {},{} are not the same curve'.format(self,other))

        TimePut(f'Enter two Diffrent point',/
               ,'Point One <Enter>')
        response = int(input())
        response == self.open
        TimePut(f'Please Enter Point Two',/,
               '<Enter>')
        responeTwo = int(input({self.openTwo}))

    if self.x is None:
        return other.x

    if self.y is None:
        return other.y
        
    def PointAddSlope(self,other): #s = (y2-y1)/(x2-x1)
        if self.s != (self.y2-self.y1)/(self.x2-self.x1):
            raise ValueError(TimePut(f'Possibly the points{},{}'.format(self),/,
            'Or its Buggy'))

    def MissingMyLastX(self,other):
                
        if self.x == None and self.s == None and/
        self.x2 == None and self.x3 == None:
            raise ValueError(f"There is not enought value points")
            usN()
            
        if PointAddSlope() == None:
            raise ValueError(TimePut(('Need a slope',/,'or Possble Bugg?'))
            usN()#should I return this?

        lastXrespon = input()
            
        if lastXrespon.lower() == "Yes":    
            while self.x3 == None:
                self.s**2 -self.x2 - self.x = self.x3
                print("Please wait while we calculate The missing Varible")
                TimePut("..... Load")
                print("ing ......../n",/,"|Finished|")
                return self.x3

        def TheLastY(self):#y3 = s(x(1)-x(2)) - y(1)

            #bro wth I mean it works but im not using LastX bc I dont feel like its the best way to handle these equations
            #finna work on block chain this is the 2nd major feature but I gotta gone ponder how tf
            

   def usN(self):#this my personal class I think this take user input

        Forms = {'(1) ':'<Add>','(2) ':'<Point Add Slope>','(3) ':'<MissingMyLastX>'}
       
        pprint.pp(Forms.value)
        TimePut('>Type In a Number<')
        userNput = input(int())
        while userNput not in range(int(0,2)):
            return TimePut('>Type In a Number<')

        if userNput == 1:
            add()
        elif userNput == 2:
            PointAddSlope()
        elif userNput == 3:
            MissingMyLastX()
        else:
            print('Would you like to <Exit>?')
            userNput2 = input()
            if userNput.lower() == 'Yes':
                sys.exit()
            else:
                usN()
    
    MissingMyLastX()
        

#im not importing nun
usN()
#see if i can get some user input I can't run it some compile at yo own risk.
