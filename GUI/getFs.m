function FS=getFs(FsString)
    FS=str2num(FsString);
    if length(FS)==0
        mode=struct('WindowStyle','modal','Interpreter','tex');
        errordlg('����Ƶ����������','����',mode);
        return;
    end
end