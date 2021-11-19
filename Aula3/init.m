function [p1,p2,p3,p4] = init(I,turma)

M=[1 2 3 4 5 6 7 8 9 10 11 12];%I
M=[M;[240 160 150  140  180  175 120 170 220 200 130 250]];%pwm
M=[M;[4  7 5 8 20 16 19 10 15 6 11 9]*100];%rpm
M=[M;[0.15 0.07 0.05 0.04 0.03 0.02 0.02 0.015 0.015 0.014 0.012 0.01]]; %Ts
M=M';
Z=[11  2  5  8  1  6  3  4  7 12  9 10
    4 12 11  8  2  7  5  1  9  6  3 10
    12  1  5  9 11 10  2  4  3  7  8  6
    7  5  6  3 12 11  4  8  9  1  2 10
    9 10  6  8  1  2  3  5  4  7 11 12];
i=Z(turma,I);
p1=M(i,1);p2=M(i,2);p3=M(i,3);p4=M(i,4);
end

