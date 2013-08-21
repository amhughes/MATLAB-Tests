%This script was created to show text data input and graphing.
%It opens the file "graphthis.txt" from the current MATLAB working
%directory.

fid = fopen('graphthis.txt', 'rt');

n = fscanf(fid,'Sets=%d\n');
p = fscanf(fid,'Pts per set=%d\n');
data=zeros(n,2,p);


for i = 1:n
    names{i} = fscanf(fid,'%s',1);
    data(i,:,:)=fscanf(fid,'%g %g',[2,p]);
end

fclose('all');

hold off

set(0,'DefaultAxesColorOrder',[0 0 0],...
      'DefaultAxesLineStyleOrder','-|-.|--|:')

x=zeros(p);
y=zeros(p);

for i=1:n
    
    for j=1:p
        x(j)=data(i,1,j);
        y(j)=data(i,2,j);
    end
    plot(x,y)
    hold all
end
hold off
legend(names{:})