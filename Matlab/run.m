
%Setup Time Vector
tStart = 0.0;
tStop = 10.0;
tSim = [tStart,tStop];

%Setup initial conditions
x0 = [0.0; %A
      0.0; %B
      0.0; %C
      ];
  
%Setup Parameters
P = [1; %[] -> A
     1; %A -> B
     1; %B -> C
     0.5; %A -> []
     0.5; %B -> []
     0.5]; %C -> []

%Solver
[t,X] = ode45(@(t,x) Balances(t,x,P),tSim,x0);



figure(1)
hold on
plot(t,X(:,1),'k','LineWidth',2)
plot(t,X(:,2),'b','LineWidth',2)
plot(t,X(:,3),'r','LineWidth',2)
xlabel("time (h)")
ylabel("Concentration (mM)")
axis([0, 10, 0, 1])
hold off

