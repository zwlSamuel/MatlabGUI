function A=Line(MicN,ArrayD,Theta,D)
    d=0:ArrayD:(MicN-1)*ArrayD;
    derad=pi/180;
    A=exp(-1i*2*pi*d.'*sin(Theta.'*derad));
end