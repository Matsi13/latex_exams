T = 0.001:0.001:8;
Cv = exp(-1./T)./(T.^2 .*(1+2*exp(-1./T)).^2);
plot(T,Cv)
xlabel('T')
ylabel('C_v','Rotation',0)
