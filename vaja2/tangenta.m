function tangenta(f,df,interval,st_tock)
%TANGENTA izrise animacijo 'drsenja' tangente po grafu funkcije
%TANGENTA(f,df,interval,st_tock)
%f je funkcija, df je njen odvod
%interval=[a,b] je interval, kjer risemo sliko
%tock je stevilo tock pri risanju

a = interval(1);
b = interval(2);
h = (b - a)/st_tock;

x = linspace(a, b, st_tock);
yf = feval(f, x);
ydf = feval(df, x);
hold on;
plot(x, yf, 'r', 'LineWidth', 4)

ymin = min(yf);
ymax = max(yf);

axis([a b, ymin, ymax]);

h = []
t = []

for i=1:st_tock
    delete(h);
    delete(t);
    k = ydf(i);
    n = yf(i) - ydf(i).*x(i);
    yt = polyval([k, n], x);
    
    h = plot(x, yt, 'b--', 'LineWidth', 2)
    t = plot(x(i), yf(i), 'ro', 'MarkerSize', 10, 'MarkerFaceColor', 'r')
    pause(0.01)
    
end