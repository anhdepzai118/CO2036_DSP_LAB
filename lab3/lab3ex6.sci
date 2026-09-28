function [yn, yorigin] = convolution(xn, xorigin, hn, horigin)
    yn = convol(xn, hn);
    yorigin = xorigin + horigin - 1;
    nx = (1:length(xn)) - xorigin;
    nh = (1:length(hn)) - horigin;
    ny = (1:length(yn)) - yorigin;
    clf(); 
    
    plot2d3(nx, xn, 2); 
    plot(nx, xn, 'bo');

    plot2d3(nh, hn, 5); 
    plot(nh, hn, 'r*');

    plot2d3(ny, yn, 3); 
    plot(ny, yn, 'gd');

    xtitle('Convolution Operation y(n) = x(n)*h(n)', 'Time (n)', 'Amplitude');
    legend(['x(n)'; ''; 'h(n)'; ''; 'y(n)']);
    xgrid();
endfunction
