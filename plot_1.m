
T = 2*pi;


X = linspace(-2*T, 2*T, 1000);
Y = sin(2*pi/T * X) .* square(X, T);

plot(X, Y);



function [y] = square(t, T)
    k_max = 1000;

    sum = 0;
    for k = 1:k_max
        sum = sum + 4/pi * 1/(2*k - 1)*sin(t * 2*pi/T * (2*k - 1));

    end
   
    y = 1/2 * (sum + 1);
    

end



