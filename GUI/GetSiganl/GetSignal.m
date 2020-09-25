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
function S=GetSignal(Signal,Fs,Snap)
if Signal.val==1
    mode=struct('WindowStyle','modal','Interpreter','tex');%modal即为模态
    errordlg('请设置正确信号参数','错误',mode);
    return ;
end
switch Signal.val
    case 2
        S=getGaussSignal(Signal.Mu,Signal.Sigma,Snap);
    case 3
        S=getSinSignal(Signal.Fre,Signal.Amp,Signal.Psi,Fs,Snap);
    case 4
        S=getCosSignal(Signal.Fre,Signal.Amp,Signal.Psi,Fs,Snap);
    case 5
        S=getSignalByFile(Signal.Path);
end
