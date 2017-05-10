function [B] = VetorB2(n)
    B=zeros(n,1);
    for i=1:n
        B(i,1) = 1.0/i;
    end
    