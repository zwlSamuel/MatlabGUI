function S=getCosSignal(Fre,Amp,Psi,Fs,Snap)
Psi=Psi*pi/180;
w=2*pi*Fre;
dt=1/Fs;
T=Snap/Fs;
t=-T/2:dt:T/2;
S=Amp*cos(w*t+Psi);
end