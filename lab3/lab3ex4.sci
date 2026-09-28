function [yn, yorigin] = add(x1n, x1origin, x2n, x2origin)
    n1 = (1:length(x1n)) - x1origin;
    n2 = (1:length(x2n)) - x2origin;
    n_min = min(min(n1), min(n2));
    n_max = max(max(n1), max(n2));
    ny = n_min : n_max; 
    y1 = zeros(1, length(ny));
    y2 = zeros(1, length(ny));
    y1(1 + min(n1) - n_min : 1 + max(n1) - n_min) = x1n;
    y2(1 + min(n2) - n_min : 1 + max(n2) - n_min) = x2n;    
    yn = y1 + y2;    
    yorigin = 1 - n_min;
    clf();   
    plot2d3(n1, x1n, 2); 
    plot(n1, x1n, 'bo');
    plot2d3(n2, x2n, 5); 
    plot(n2, x2n, 'r*');    
    plot2d3(ny, yn, 3); 
    plot(ny, yn, 'gd');
    
    xtitle('Addition Operation y(n) = x1(n) + x2(n)', 'Time (n)', 'Amplitude');
    legend(['x1(n)'; ''; 'x2(n)'; ''; 'y(n)']);
    xgrid();
endfunction
