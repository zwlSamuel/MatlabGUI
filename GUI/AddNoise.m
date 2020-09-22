%% input val:the kind of Noise
% FreN:the frequency of sin/cos Noise
%AmpN:the amplitude of sin/cos Noise
%PsiN:the phase of sin/cos Noise
%MuN:the expectation of Gauss Noise
%SigmaN:the variance of Gauss Noise
%Fs:the sample frequency
%Snap:the snapshot
%Snr:signal to noise ratio
function X=AddNoise(Signal,val,FreN,AmpN,PsiN,Fs,Snap,Snr)
if val==1
    mode=struct('WindowStyle','modal','Interpreter','tex');%modal即为模态
    errordlg('请设置正确噪音参数','错误',mode);
    return ;
end
switch val
    case 2 
        X=AddGaussNoise(Signal,Snr);
    case 3
        X=AddSinNoise(Signal,FreN,AmpN,PsiN,Fs,Snap,Snr);
    case 4
        X=AddCosNoise(Signal,FreN,AmpN,PsiN,Fs,Snap,Snr);
    case 5
        X=Signal;    
end