%Bu veri setinden sadece iki bitki için ve iki ölçüm deðeri kullanarak bir tek katman perceptron eðitmek
%istiyoruz. (Ör: sadece sepal length ve sepal width ölçümleri kullanarak iris- setosa ve iris- versicolor).
% iki bitki için iki ölçüm deðeri kullandýðýmýzdan toplamda olmasý gereken
% deðerimiz 150 iken 135 deðer kullanýrýz Diðer aþamada yeni tür ekledikten
% sonra 3 bitki türümüz olucak ve toplamda 150 deðer olucak.
% 
s="Perceptron";
p1=[5.1 4.9 4.7 4.6 5 5.4 4.6 5 4.4 4.9 5.4 4.8 4.8 4.3 5.8 5.7 5.4 5.1 5.7 5.1 5.4 5.1 4.6 5.1 4.8 5 5 5.2 5.2 4.7 4.8 5.4 5.2 5.5 4.9 5 5.5 4.9 4.4 5.1 5 4.5 4.4 5 5.1 4.8 5.1 4.6 5.3 5 7 6.4 6.9 5.5 6.5 5.7 6.3 4.9 6.6 5.2 5 5.9 6 6.1 5.6 6.7 5.6 5.8 6.2 5.6 5.9 6.1 6.3 6.1 6.4 6.6 6.8 6.7 6 5.7 5.5 5.5 5.8 6 5.4 6 6.7 6.3 5.6 5.5 5.5 6.1 5.8 5 5.6 5.7 5.7 6.2 5.1 5.7];
p2=[3.5 3 3.2 3.1 3.6 3.9 3.4 3.4 2.9 3.1 3.7 3.4 3 3 4 4.4 3.9 3.5 3.8 3.8 3.4 3.7 3.6 3.3 3.4 3 3.4 3.5 3.4 3.2 3.1 3.4 4.1 4.2 3.1 3.2 3.5 3.1 3 3.4 3.5 2.3 3.2 3.5 3.8 3 3.8 3.2 3.7 3.3 3.2 3.2 3.1 2.3 2.8 2.8 3.3 2.4 2.9 2.7 2 3 2.2 2.9 2.9 3.1 3 2.7 2.2 2.5 3.2 2.8 2.5 2.8 2.9 3 2.8 3 2.9 2.6 2.4 2.4 2.7 2.7 3 3.4 3.1 2.3 3 2.5 2.6 3 2.6 2.3 2.7 3 2.9 2.9 2.5 2.8];
t=[0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1  1  1  1  1  1  1  1  1  1  1  1  1  1  1  1  1  1  1  1  1  1  1  1  1  1  1  1  1  1  1  1  1  1  1  1  1  1  1  1  1  1  1  1  1  1  1  1  1  1 ]; 

plot(p1(t==0),p2(t==0),'ro')
hold on
plot(p1(t==1),p2(t==1),'gd')
title(s)
xlabel('p1')
ylabel('p2')
axis([-9 9 -9 9])
lamda=0.2;
w1=1;
w2=2;
b=3;
n=0;
N=length(t);
M=10000;
for m=1:M
    n=1+mod(n,N);
    net=w1*p1(n)+w2*p2(n)+b;
    a=hardlim(net);
    if(a==t(n))
    else
        dw1=lamda*p1(n);
        dw2=lamda*p2(n);
        if(a>t(n))
w1=w1-dw1;
w2=w2-dw2;
        else
            w1=w1+dw1;
            w2=w2+dw2;
        end
    end
end
X1=[-10,10];
X2=(b-w1*X1)/w2;
plot(X1,X2)
tur=sign(b+w(1)*p(1)+w(2)*p(2)); %yeni tür belirleme
            