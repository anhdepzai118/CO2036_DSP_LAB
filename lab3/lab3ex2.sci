function [yn, yorigin] = advance(xn, xorigin, k)

    yn = xn;
    yorigin = xorigin + k;

    nx = (1:length(xn)) - xorigin;
    ny = (1:length(yn)) - yorigin;

    clf(); 
    
    plot2d3(nx, xn, 2);  
    plot(nx, xn, 'bo'); 

    plot2d3(ny, yn, 5); 
    plot(ny, yn, 'r*');  
    
    xtitle('Advance Operation y(n) = x(n+k)', 'Time (n)', 'Amplitude');
    legend(['x(n)'; ''; 'y(n)']);
    xgrid();
endfunction
