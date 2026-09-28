function [yn, yorigin] = fold(xn, xorigin)
    yn = xn($:-1:1); 
    
    yorigin = length(xn) - xorigin + 1;
    
    nx = (1:length(xn)) - xorigin;
    ny = (1:length(yn)) - yorigin;
    
    clf(); 
    
    plot2d3(nx, xn, 2);
    plot(nx, xn, 'bo');
    

    plot2d3(ny, yn, 5);
    plot(ny, yn, 'r*');
    
    xtitle('Folding Operation y(n) = x(-n)', 'Time (n)', 'Amplitude');
    legend(['x(n)'; ''; 'y(n)']);
    xgrid();
endfunction
