function result = q1rmsd(u,v)
result = 0;
n = length(u);
for i=1:n
    result = result+(u(i)-v(i))^2;
end
result = (result/n)^(1/2);
end