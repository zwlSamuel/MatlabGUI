function [Th,Ph]=MUSIC(X,Array,Theta,Phi,D)
    
    switch Array.val
        case 2
            A=Line(Array.MicN,Array.ArrayD,Theta,D);
         case 3
            A=Circle(Array.MicN,Array.ArrayR);
    end
     K=length(X);
     
%     X1=zeros(length(Theta),K);
%     for i=1:length(Theta)
%         X1(i,:)=X;
%     end
    X1=randn(length(Theta),length(X));
    X1=A*X1;
    Rxx=X1*X1'/K;
    % 特征值分解
    [EV,D]=eig(Rxx);                   %特征值分解
    EVA=diag(D)';                      %将特征值矩阵对角线提取并转为一行
    [EVA,I]=sort(EVA);                 %将特征值排序 从小到大
    EV=fliplr(EV(:,I));                % 对应特征矢量排序
    % 遍历每个角度，计算空间谱
    
    M=length(Theta);
    for iang = 1:361
        angle(iang)=(iang-181)/2;
        
        a=Line(Array.MicN,Array.ArrayD,angle(iang),D);
        En=EV(:,M+1:Array.MicN);                   % 取矩阵的第M+1到N列组成噪声子空间
        Pmusic(iang)=1/(a'*En*En'*a);
    end
    
    Pmusic=abs(Pmusic);
    Pmmax=max(Pmusic);
    Pmusic=10*log10(Pmusic/Pmmax);            % 归一化处理
    local=findPeaks(Pmusic); 
    for i=1:length(local)
        Th(i)=angle(local(i));
        disp(Th(i));
    end
    Ph=[0];
    h=plot(angle,Pmusic);
    set(h,'Linewidth',2);
    xlabel('入射角/(degree)');
    ylabel('空间谱/(dB)');
    set(gca, 'XTick',[-90:30:90]);
    grid on
end

function Local=findPeaks(P)
    count=1;
    for i=2:length(P)-1
        if P(i)>P(i-1)+100&P(i)>P(i+1)+100
            Local(count)=i;
            count=count+1;
        end
            
    end
end