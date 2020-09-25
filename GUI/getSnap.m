function SNAP=getSnap(SnapString)
    SNAP=str2num(SnapString);
    if length(SNAP)==0
        mode=struct('WindowStyle','modal','Interpreter','tex');
        errordlg('快拍数设置有误','错误',mode);
        return;
    end
end