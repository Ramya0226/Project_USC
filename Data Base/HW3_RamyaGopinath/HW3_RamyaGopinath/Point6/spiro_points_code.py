import math

t=0.00
R = 8.0/10000
r = 1.0/10000
a = 4.0/10000
with open("spiro_coordinates.txt", 'w') as file:
    while t < 16*math.pi:
        x=(R + r) * math.cos((r / R) * t) - a * math.cos((1 + r / R) * t) -118.2855761 
        y = (R + r) * math.sin((r / R) * t) - a * math.sin((1 + r / R) * t) + 34.0204119
        result=""
        result+=str(x)+ ',' +str(y)+ ",0\n"
        file.write(result)
        t=t+0.01
        

#points generation code using tommy trojan as the center for the Spirograhp