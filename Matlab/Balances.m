function dxdt = Balances(t,x,P)

    %Setup Species
    A = x(1);
    B = x(2);
    C = x(3);

    %Setup Parameters
    k1 = P(1); %[] -> A
    k2 = P(2); %A -> B
    k3 = P(3); %B -> C
    kd_A = P(4); %A -> []
    kd_B = P(5); %B -> []
    kd_C = P(6); %C -> []

    %Setup Mass Balances
    dxdt = [k1 - k2*A - kd_A*A; %A
             k2*A - k3*B - kd_B*B; %B
             k3*B - kd_C*C]; %C
    
end