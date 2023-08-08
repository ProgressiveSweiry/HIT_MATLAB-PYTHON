%% 1

format long

disp(((4^2)/(4+5^2) + 6/75)^(2/3))
disp((1+9i) + ((4+7i) * (31+8i))^4 )
disp((cos(60))^3 + (tand(12.5))^5 )
disp(sqrt(7*10^(-3)+8) / (5.3/12.5))
disp(abs(sind(45) * 4^(4*pi + cosh(log2(pi^4)))))
disp(log(pi) + sqrt(log(exp(3))))

%% 2
x1 = 4;
x2 = 2;
x3 = 5;
x4 = 2;
x5 = 6/75;
x6 = 2/3;

y1 = ((x1^x2)/(4+x3^x4) + x5)^x6;
disp (y1)

x1 = 1+9i;
x2 = 4+7i;
x3 = 31+8i;

y2 = (x1) + ((x2) * (x3))^4 ;
disp(y2)

x1 = 12.5;

y3 = ((cos(60))^3 + (tand(x1))^5 );
disp(y3)

x1 = 7 * 10^(-3);
x2 = 5.3/12.5;

y4 = sqrt(x1+8) / x2;
disp(y4)

x1 = 45;
x2 = pi;
x3 = pi;
x4 = 4;

y5 = abs(sind(x1) * 4^(4*x2 + cosh(log2(x3^x4))));
disp(y5)

x1 = pi;
x2 = 3;

y6 = log(x1) + sqrt(log(exp(x2)));
disp(y6)

%% 3

disp(angle(2.7i))
disp(angle(1.35 + 1i))
disp(angle( (cos(pi^4) + (3*sin(pi^4)*1i))^4 ))
disp(angle(log(10+6i)))


%% 4

% printed numbers has more digits for accurate answers 

format short

%% 5

v1 = 0:4:23;
v2 = -5:5;
v3 = 18:-4:0;
v4 = linspace(-pi, 6*pi, 64);
v5 = round(randn([1 25]));

disp(v1)
disp(v2)
disp(v3)
disp(v4)
disp(v5)

%% 6

A = randn(4);
disp(A)
disp([log(6.5), 5^5, 3; -0.985, -pi, 0.3; angle(1+1i), -88, 3])
B = -5:4:25;
disp(B')
C = zeros(3);
C(4,3) = 5;

%% 7

a1 = A(4,:);
a2 = A(2,3);
a3 = A(:,2);
disp(a1)
disp(a2)
disp(a3)

%% 8

% disp(x) -> display value of x
% fprintf(x) -> display data or write data to text file
% ones(N) -> creates NxN matrix with every element equal to 1
% zeros(N) -> creates NxN matrix with every element equal to 0
% tril(A,k) -> returns the elements on and below the kth diagonal of A
% triu(A,k) -> returns the elements on and above the kth diagonal if A

%% 9

ID = "322816323";

disp(ID);
fprintf(ID);

%% 10

myID = input("Input ID as a vector: ");

myID2 = myID;

if(myID2(5) < myID(1))
    myID2(5) = myID(1);
end

if(((myID2(1) == 1) && (myID2(5) == 1)) || ((myID2(1) == 0) && (myID2(5) == 0)))
    myID2(1) = 5;
    myID2(5) = 5;
end

R = zeros([myID2(1), myID2(5)]);
R(1,:) = myID(1);
R(2,:) = myID(1);

for i = 3:myID2(5)
    R(i, :) = myID(i);
end

up_tri = triu(R);
dw_tri = tril(R);


%% 11

time = linspace(0, 0.75*exp(1), 118);
time2 = linspace(0, 0.75*exp(1), 58);
time3 = linspace(0, 0.75*exp(1), 26);
time4 = linspace(0, 0.75*exp(1), 10);
time5 = linspace(0, 0.75*exp(1), 8);
time6 = linspace(0, 0.75*exp(1), 5);

y1 = cos(5*time);
y2 = cos(5*time2);
y3 = cos(5*time3);
y4 = cos(5*time4);
y5 = cos(5*time5);
y6 = cos(5*time6);

subplot(6,1,1);
plot(time,y1);
subplot(6,1,2);
plot(time2,y2);
subplot(6,1,3);
plot(time3,y3);
subplot(6,1,4);
plot(time4,y4);
subplot(6,1,5);
plot(time5,y5);
subplot(6,1,6);
plot(time6,y6);






