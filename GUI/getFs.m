function FS=getFs(FsString)
    FS=str2num(FsString);
    if length(FS)==0
        mode=struct('WindowStyle','modal','Interpreter','tex');
        errordlg('采样频率设置有误','错误',mode);
        return;
    end
end