%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% 
% Function to obtain the predictions of the TClab temperature
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

function [ykk,xkk]=simu(xk,uk)
    global a b c d 
    xkk=a*xk+b*uk;    
    ykk=c*xk+d*uk;    
end