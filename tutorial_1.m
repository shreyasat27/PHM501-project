%Set 1 - Plotting magnitude and phase of complex functions of a real variable

%Plot the magnitude and phase of the function X(jω)=jω/(1+jω) as a function of ω for −10π≤ω≤10π

omega = linspace(-2*pi,2*pi,1000);
%x = (j*omega)./(1+j*omega);
x = 1./(1+j*omega);
subplot(2,1,1),plot(omega,abs(x));
xlabel('\omega'),ylabel('|x(j w)|');
subplot(2,1,2),plot(omega,angle(x));
xlabel('w'),ylabel('phase(x(j w))');


%% Plot the magnitude and phase of the function x(t)=imag(3-e^(1-j2π)t) as a function of t for −10≤t≤10
t = -10:0.01:10;
x = imag(3-exp((1-2*j*pi)*t));
subplot(2,1,1),plot(t,abs(x));
xlabel('t'),ylabel('|x(t)|');
subplot(2,1,2),plot(t,angle(x));
xlabel('t'),ylabel('phase(x(j w))');

%%
% Plot the magnitude and phase of the function X(jω)=e^j3ω+e^j5ω  as a function of ω for −10π≤ω≤10π.
% For what values of ω is X(jω)=0? Solve tihs problem analytically and verify your answer.
omega = linspace(-10*pi,10*pi,100);
x = exp(j*3*omega)+exp(5*j*omega);
subplot(2,1,1),plot(omega,abs(x));
xlabel('w'),ylabel('|x(j w)|');
subplot(2,1,2),plot(omega,angle(x));
xlabel('w'),ylabel('phase(x(j w))');

%Consider the complex function x(t)=∑_(k=0)^6e^(j2πkt/8. 
% Evaluate this sum in MATLAB either by using the sum function or using a for loop. 
% Plot the real and imaginary parts of x(t) versus t for −10≤t≤10. 
% Now, analytically determine a closed-form expression for x(t). 
% Plot this function in MATLAB and verify that both of them coincide.
t = -10:0.001:10;
x_i = [exp(j*2*pi*0*t/8);
exp(j*2*pi*1*t/8);
exp(j*2*pi*2*t/8);
exp(j*2*pi*3*t/8);
exp(j*2*pi*4*t/8);
exp(j*2*pi*5*t/8);
exp(j*2*pi*6*t/8)];
x = sum(x_i, 1);
subplot(2,1,1),plot(t,real(x));
xlabel('t'),ylabel('real(x(j w))');
subplot(2,1,2),plot(t,imag(x));
xlabel('t'),ylabel('image(x(j w))');