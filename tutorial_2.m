%Set 2 – Manipulating signals
%•	basic introduction to signals such as continuous and discrete-time signals
%•	operations on signals such as scaling of the time axis, shift in time. 
%•	use wavrecord to record an audio clip or look for an audio clip online in wav form and try to plot that signal as a function of time.
%•	simulate echo in an auditorium and listen to the sound.
%%
% Create your own audio file that is at least 4 seconds long 
% (the exact time duration is not really important, but do not make the file too long). 
% Use the wavrecord command in MATLAB and a sampling frequency of 10000 Hz. 
% Use the sound command in MATLAB to play the sound. Make sure the recording is fine.
fs = 10000;
recObj = audiorecorder(fs, 8, 1);
recordblocking(recObj, 10);
y = getaudiodata(recObj);
sound(y, fs);

z = y(1:2:length(y));
sound(z, fs);

%%
% Sum of sinusiods of the same frequency. 
% One of the useful results about sinusoids and cosinusoids is that 
% sums of sinusoids and cosinusoids of the same frequency but with 
% arbitrary amplitude and phase result in another sinsuoid or cosinusoid of the same frequency. 
% Let x1(t)=A1sin(ωt+θ1) and let x2(t)=A2sin(ωt+θ2), x3(t)=A3sin(ωt+θ3)
% plot x1(t) and x2(t) as a function of t for −10≤t≤10 . 
% Use 200 samples along the time axis, i.e., time should be incremented in steps of 0.01. 
% Observe that each of the signals is periodic with the time period that you expect. 
% Now plot the sum of the signals and observe that it is also a sinusoid with the exact same frequency (time period). 
% Now, analytically find an expression for x3(t) in the form Bsin(ωt+ϕ),i.e., find B and ϕ. 
% Plot this signal for the same range of values of t and observe that the signals coincide. 
% Use the hold on command in MATLAB and plot the two signals in different colors. 
% We can easily extend this result to see that a linear combination of any number of 
% sinusoids of the same frequency results in another sinusoid of the same frequency.


%
filename = 'testaudio.wav';
audiowrite(filename,y,fs);
%getaudiodata	Store recorded audio signal in numeric array
%recordblocking	Record audio to audiorecorder object; hold control until recording completes

%%
%Using the audioread command, read the signal into a vector called x. 
%Also read the sampling frequency in to a variable called Fs. 
%Make sure you understand what this sampling frequency means. 
% Plot the received signal as a function of time. Your time axis must have units in seconds.
[y, fs] = audioread('testaudio.wav');
t = 1/fs:1/fs:length(y)/fs;
plot(t, y);
xlabel('time (s)');
ylabel('V');

%%
%Even though the audio signal is originally a continuous-time signal, 
% we cannot represent continuous-time signals on a digitial computer directly. 
% In this example, you have sampled the continuous-time signal 
% and you are representing it as a discrete-time signal. 
% Create the signal x[2n] and play the signal by using the sound command 
% and use the same sampling frequency as before. See that it sound shriller. 
% Think about why this should be the case.


t = -10:0.01:10;
x1 = sin(4*pi*t);
x2 = sqrt(3)*sin(4*pi*t+pi/4);
x = x1+x2;
subplot(3,1,1);
plot(t, x1);
subplot(3,1,2);
plot(t,x2);
subplot(3,1,3);
plot(t,x);


%%
% Sum of sinusoids of different frequencies. 
% Let us now consider the same example as above, except that we consider
% the case when the frequencies of sinusoids are different. 
% Let x1(t)=A1sin(ω1t+θ1), x2(t)=A2sin(ω2t+θ2) and x3(t)=A3sin(ω2t+θ3).
% plot x1(t),x2(t) and x3(t) as a function of t for −10≤t≤10. 
% Let x4(t) be the sum of the three signals. Is x4(t) periodic? Why or why not? 

% Adding sinusoids of different frequencies arises in modeling wireless communication channels 
% when the receiver or transmitter is moving. In wireless channels, typically the transmitting 
% signals propagate via several reflections (similar to echo) and the net result is that if a
% sinusoid is transmitted, the received signal will be the sum of sinusoids with different amplitudes and phases. 
% When there is relative mobility between the transmitter and the receiver, these reflected
% paths also undergo different Doppler shifts and, hence, their frequencies will be slightly different.
t = -10:0.01:10;
x1 = sin(4*pi*t);
x2 = sin(2*sqrt(5)*pi*t+pi/4);
x3 = sin(2*sqrt(3)*pi*t+pi/6);
x = x1+x2+x3;
subplot(4,1,1);
plot(t, x1);
subplot(4,1,2);
plot(t,x2);
subplot(4,1,3);
plot(t,x3);
subplot(4,1,4);
plot(t,x);

