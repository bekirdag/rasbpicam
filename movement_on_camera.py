import os
import glob
from time import sleep
import mmap
import time
import datetime

list_of_files = glob.glob('/home/pi/Documents/motion/*.jpg') # * means all if need specific format then *.csv
latest_file = max(list_of_files, key=os.path.getctime)
print latest_file

os.system('sudo hcitool info XX:XX:XX:XX:XX:XX > /home/pi/home_security/person_1_is_connected.txt')
os.system('sudo hcitool info XX:XX:XX:XX:XX:XX > /home/pi/home_security/person_2_is_connected.txt')
sleep(5)

f1 = open('/home/pi/home_security/person_1_is_connected.txt')
s1 = mmap.mmap(f1.fileno(), 0, access=mmap.ACCESS_READ)

f2 = open('/home/pi/home_security/person_2_is_connected.txt')
s2 = mmap.mmap(f2.fileno(), 0, access=mmap.ACCESS_READ)

device_1_clue = 'Device Name: PERSON1DEVICENAME'
device_2_clue = 'Device Name: PERSON2DEVICENAME'

if s1.find(device_1_clue) == -1 and s2.find(device_2_clue) == -1:
	print "Noone is at home, alarm!"
	os.system('sudo mpack -s "Hey, your security camera has detected motion!" '+latest_file+' email1@emai.com email2@emai.com')