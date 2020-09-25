function [Theta,Phi,D]=getExperAngle(ThString,PhString)
    Theta=str2num(ThString);
    if(strcmpi('NULL',deblank(PhString)))
        D=2;
    else
        D=3;
    end
    Phi=str2num(PhString);
    if length(Theta)~=length(Phi)&& D~=2
        mode=struct('WindowStyle','modal','Interpreter','tex');
        errordlg('ThetaªÚPhi…Ë÷√”–ŒÛ','¥ÌŒÛ',mode);
        return;
    end
end