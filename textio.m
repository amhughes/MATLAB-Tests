%This script was created to demonstrate basic MATLAB text file I/O and user
%input.
%It reads data from an input file into an array: 'a', multiplies it by user
%suppplied multiplier: 'mtp' and outputs each value to the output file.

nametxt = input('\nName an input text file(just the name):\n','s');
rid = fopen([nametxt, '.txt'], 'rt');
%Opens input file as specified by the user

nametxt = input('\nName an output text file(just the name):\n','s');
wid = fopen([nametxt, '.txt'], 'wt');
%Opens output file as specified by the user

a = fscanf(rid, '%g');
%Reads data from input file

mtp = input('\nName a multiplier:\n');
%Input the multiplier

b = a*mtp;
%Multiply

fprintf(wid,'%g\n',b);
%Output data

fclose('all');
%Close the files

fprintf('Complete\n')
%Respond that the program has finished