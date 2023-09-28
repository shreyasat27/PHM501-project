%draw the bode plot for the function 

%H(jw)=(jw+5)/(jw+10)(jw+100)

%using zpk function

sys=zpk(-5, [-10,-100], 1);
bode(sys)

%using tf function 
%H(jw)=(jw+5/(jw)^2 +110jw + 1000)

H = tf(5, [1, 110, 1000] );
bode(H)


