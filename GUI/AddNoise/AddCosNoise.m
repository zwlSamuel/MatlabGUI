function X=AddCosNoise(S,FreN,AmpN,PsiN,Fs,Snap,snr)
PsiN=PsiN*pi/180;
w=2*pi*FreN;
T=Snap/Fs;
dt=1/Fs;
t=-T/2:dt:T/2;
N=AmpN*cos(w*t+PsiN);
S_Power=sum(S.*S)/length(S);
N_Var=S_Power/(10^(snr/10));
N=sqrt(N_Var)/std(N)*N;
X=S+N;
end