f = inline('2*y','t','y');
odeopt = odeset ('RelTol', 0.00001, 'AbsTol', 0.00001,'InitialStep',0.001,'MaxStep',0.001);
[t,y] = ode45(f,[0 3],1,odeopt);
plot(t,y);
print -djpg figure-lsnode.jpg
