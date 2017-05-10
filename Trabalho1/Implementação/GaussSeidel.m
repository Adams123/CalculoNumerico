function C = GaussSeidel(A,B,n,EPS,ITMAX)
X=zeros(n,1);
iteracoes=0;
erro=1000;

    while erro>EPS && iteracoes<ITMAX
       XOld=X;
       for i=1:n
        T=Soma1(A,X,i);
        U=Soma2(A,XOld,i,n);
        X(i)=(B(i)- T - U)/A(i,i);
       end
       erro=NormaInfinita(XOld,X,n);
       iteracoes=iteracoes+1;
    end

    if iteracoes==ITMAX 
        fprintf('DIVERGE!\n');
    else
        fprintf('Converge para:\n');
        disp(X);
        C=X
        fprintf('\nQuantidade de Iterações:\n');
        disp(iteracoes);
        fprintf('\n');
    end
end

function [soma1] = Soma1(A,x_0,i) %calcula primeiro somatório do método
soma1=0;
    for j=1:i-1
        soma1 = soma1 + (A(i,j)*x_0(j));
    end
end

function [soma2] = Soma2(A,x_0,i,n) %calcula segundo somatório do método
soma2=0;
    for j=i+1:n
        soma2 = soma2 + (A(i,j)*x_0(j));
    end
end

function [max] = NormaInfinita(xk,xk1,n) %calcula norma infinita dados dois vetores xk e xk1, de tamanho n

    x=xk1-xk;
    max=0;
    for i=1:n
            soma=abs(x(i,1));
        if(soma>max)
            max=soma;
        end
    end
end
