function SNAP=getSnap(SnapString)
    SNAP=str2num(SnapString);
    if length(SNAP)==0
        mode=struct('WindowStyle','modal','Interpreter','tex');
        errordlg('��������������','����',mode);
        return;
    end
end