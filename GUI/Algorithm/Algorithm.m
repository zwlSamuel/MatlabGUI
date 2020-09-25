%% Struct Array
%{
kind;MicN,ArrayD,ArrayR,XMicN,YMicN,XArrayD,YArrayD
%}
function [errTh,errPh]=Algorithm(X,Array,val,Theta,Phi,D)
    addpath(genpath('.'));
    switch val
        case 1
            mode=struct('WindowStyle','modal','Interpreter','tex');%modal��Ϊģ̬
            errordlg('��������ȷ�źŲ���','����',mode);
            return ;
        case 2
            [Th,Ph]=MUSIC(X,Array,Theta,Phi,D);
    end
    for i=1:length(Th)
        errTh(i)=Th(i)-Theta(i);
    end
    errPh=[];
            
end