function ProcessMain(Array,Signal,Noise,Experiment,SnrString,SnapString,FsString)
    addpath(genpath('.'));
    SNR=getSnr(SnrString);
    SNAP=getSnap(SnapString);
    FS=getFs(FsString);
    [Theta,Phi,D]=getExperAngle(Experiment.Theta,Experiment.Phi);
    for i=1:length(FS)
        for j=1:length(SNAP)
            S=GetSignal(Signal,FS(i),SNAP(j));
            for k=1:length(SNR)
                X=AddNoise(S,Noise,FS(i),SNAP(j),SNR(k));
                [err1,err2]=Algorithm(X,Array,Experiment.val,Theta,Phi,D);
                figure(1);
                plot(err1);
                figure(2);
                plot(err2);
            end
            
            
        end
    end
    
        
end