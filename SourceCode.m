%Descripting the data for the arm:

l1=2;
l2=1;
theta1=linspace(0,90,40);
theta2=linspace(0,180,40);
ct=1
for i=1:length(theta1)
    T1=theta1(i);
    for j=1:length(theta2)
        T2=theta2(j);
x0=0;
y0=0;

x1=l1*cosd(T1);
y1=l1*sind(T1);

x2=x1+l2*cosd(T2);
y2=y1+l2*sind(T2);

%Ploting:

plot([x0 x1],[y0 y1],[x1 x2],[y1 y2],'linewidth',3)
axis([-2 4 0 4])
pause(0.0001)
M(ct)=getframe(gcf)
ct=ct+1       
    end
end  

%Creating the movie:
     
movie(M)
videofile=VideoWriter('roboarm.avi','Uncompressed AVI')
open(videofile)
writeVideo(videofile,M)
close(videofile)