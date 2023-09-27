 %Plotting magnitude and phase of complex functions of a real variable

 %Plot the magnitude and phase of the function X(jω)=jω/(1+jω) as a function of ω for −10π≤ω≤10π

omega = linspace(-2*pi,2*pi,1000);
%x = (j*omega)./(1+j*omega);
x = 1./(1+j*omega);
subplot(2,1,1),plot(omega,abs(x));
xlabel('\omega'),ylabel('|x(j w)|');
subplot(2,1,2),plot(omega,angle(x));
xlabel('w'),ylabel('phase(x(j w))');
