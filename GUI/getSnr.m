function SNR=getSnr(SnrString)
    SNR=str2num(SnrString);
    if length(SNR)==0
        mode=struct('WindowStyle','modal','Interpreter','tex');
        errordlg('SNR…Ë÷√”–ŒÛ','¥ÌŒÛ',mode);
        return;
    end
end