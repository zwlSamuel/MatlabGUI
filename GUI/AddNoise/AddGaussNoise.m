function X=AddGaussNoise(S,snr)
X=awgn(S,snr,'measured');
end