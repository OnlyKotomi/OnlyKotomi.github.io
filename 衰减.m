t=0:pi/50:4*pi;     

y0=exp(t/3);

y=exp(t/3).*sin(3*t);

plot(t,y,'-r',t,y0,':b',t,-y0,':b') 