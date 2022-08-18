%let us assume an organ which is divided into 9X9 matrix
%the values of absorbed x rays is in terms of equations are given below
% a+b+c=12
% d+e+f=13
% g+h+i=12
% a+d+g=12
% b+e+h=13
% c+f+i=12
% g=3
% d+h=8
% a+e+i=15
% a=5
% b+d=8
%c+e+g=11
%solution for a set of 9 equations when rays are sent in different directio
r1=[1 1 1 0 0 0 0 0 0 12];
r2=[0 0 0 1 1 1 0 0 0 13];
r3=[0 0 0 0 0 0 1 1 1 12];
r4=[1 0 0 1 0 0 1 0 0 12];
r5=[0 1 0 0 1 0 0 1 0 13];
r6=[0 0 1 0 0 1 0 0 1 12];
r7=[0 0 0 0 0 0 1 0 0 3];
r8=[0 0 0 1 0 0 0 1 0 8];
r9=[1 0 0 0 1 0 0 0 1 15];
r10=[1 0 0 0 0 0 0 0 0 5];
r11=[0 1 0 1 0 0 0 0 0 8];
r12=[0 0 1 0 1 0 1 0 0 11];
tot1=[r1;r2;r3;r4;r5;r6;r7;r8;r9];
solution1solution1=rref(tot1)
tot2=[r1;r2;r3;r4;r5;r6;r10;r11;r12];
solution2=rref(tot2)
%from the two solution sets we can get our final overlaped values as:
% a=5;b=4;c=3
% d=4;e=5;f=4
% g=3;h=4;i=5
plot([0,5],[0,0])
hold on
plot([0,0],[0,5])
g=fill([0,1,1,0],[0,0,1,1],[0.5 0.5 0.5]);
hold on
h=fill([1,2,2,1],[0,0,1,1],[0.3 0.3 0.3]);
hold on
i=fill([2,3,3,2],[0,0,1,1],'k');
hold on
d=fill([0,1,1,0],[1,1,2,2],[0.3 0.3 0.3]);
hold on
e=fill([1,2,2,1],[1,1,2,2],'k');
hold on
f=fill([2,3,3,2],[1,1,2,2],[0.3 0.3 0.3]);
hold on
a=fill([0,1,1,0],[2,2,3,3],'k');
hold on
b=fill([1,2,2,1],[2,2,3,3],[0.3 0.3 0.3]);
hold on
c=fill([2,3,3,2],[2,2,3,3],[0.5 0.5 0.5]);
hold on