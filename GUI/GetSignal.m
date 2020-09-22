%% input:val: the kind of signal
%Fre: the frequency of sin/cos signal
% Amp:the amplitude of sin/cos signal
% Psi:the phase of sin/cos signal
% Mu:the expectation of Gauss signal
%Sigma:the variance of Gauss signal
%path: the path of audio file
%Fs:sample frequency
%snap:snapshot

%% output: the signal
function Signal=GetSignal(val,Fre,Amp,Psi,Mu,Sigma,Path,Fs,Snap)
if val==1
    mode=struct('WindowStyle','modal','Interpreter','tex');%modal即为模态
    errordlg('请设置正确信号参数','错误',mode);
    return ;
end
switch val
    case 2
        Signal=getGaussSignal(Mu,Sigma,Snap);
    case 3
        Signal=getSinSignal(Fre,Amp,Psi,Fs,Snap);
    case 4
        Signal=getCosSignal(Fre,Amp,Psi,Fs,Snap);
    case 5
        Signal=getSignalByFile(path);
end
