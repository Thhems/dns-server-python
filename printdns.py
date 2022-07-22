#!/usr/bin/env python3
import random, os, subprocess

#######################################################################################
################### Lister tous les noms de domaine visités par l'IP ##################
#######################################################################################
file1 = open('dns/logz.txt', 'r')
Lines = file1.readlines()
count = 0
fields =[]
count=0
for line in Lines:
	if count < 1:
		fields.append(line.replace('\'','').replace(']','').replace('[','').replace("\n","").replace(" ",""))
	else:
		fields.append(line.replace('], [',']\n[').replace('[[','[').replace(']]',']'))
	count += 1
ips = fields[0].split(",")
datas = fields[1].split("\n")
final= []
for data in datas:
	temp=data.replace('\'','').replace('[','').replace(']','').replace(' ','')
	temp=temp.split(",")
	temp.sort()
	final.append(temp)
count=0
color=0
for data in final:
	cp = color
	color=random.randint(91,97)
	if cp == color:
		color -= 1
	print('\033['+str(color)+'m'+"----------------------------------")
	for dataaa in data:
		print('\033['+str(color)+'m'+ips[count]+" : "+dataaa)
	count+=1
print("----------------------------------")
