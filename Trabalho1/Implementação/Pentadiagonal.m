function [m] = Pentadiagonal(n)
    [m]=zeros(n);
    for i=1:n
        m(i,i)=4;
    end

    for i=1:n-1
        m(i,i+1)=-1;
        m(i+1,i)=-1;
    end

    for i=1:n-3
        m(i,i+3)=-1;
        m(i+3,i)=-1;
    end
end