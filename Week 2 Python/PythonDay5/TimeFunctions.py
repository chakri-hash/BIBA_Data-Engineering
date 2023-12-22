#time intervals
import time
ticks = time.time()
print("Number of ticks since 12:00am, January 1, 1970:", ticks)

#time tuple
import time
print(time.localtime())

#gettng current time
import time
localtime = time.localtime(time.time())
print("Local current time :", localtime)

#getting formatted time
import time
localtime = time.asctime(time.localtime(time.time()))
print("Local current time :", localtime)

#calender for a month
import calendar
cal = calendar.month(2023,9)
print("calender : ")
print(cal)


from datetime import date
date1=date(2023,6,28)
print(date1)
#date2=date(2023,6,31) -----------> this gives error because 31 is out of bound for 6th month
#print(date2)


from datetime import date
mindate = date.min
print("minimum date : ", mindate)
maxdate = date.max
print("maximum date : ", maxdate)

date1 = date(2023,4,20)
print("year : ",date1.year)
print("month : ",date1.month)
print("day : ",date1.day)


#fromisoformat
from datetime import date


print (date.today())
d1=date.fromisoformat('2023-04-20')
print (d1)
d2=date.fromisoformat('20230420')
print (d2)
d3=date.fromisoformat('2023-W16-4')
print (d3)


