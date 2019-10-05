syms a x y z;
f= (1+a/x)^x;
limit(f,x,inf)
g= exp(2*x)==3*y;
solve(g)

h = [2*x-3*y+4*z==5,y+4*z+x==10,-2*z+3*x+4*y==0];
[x1 y1 z1] = solve(h);
[x1,y1,z1]