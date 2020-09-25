% A=Line(Array.MicN,Array.ArrayD,Theta,D);
% K=length(S);
% X1=zeros(length(Theta),K);
% for i=1:length(Theta)
%     X1(i,:)=S;
% end
derad = pi/180;      %�Ƕ�->����
N = 8;               % ��Ԫ����        
M = 3;               % ��Դ��Ŀ
theta = [-30 0 60];  % �����ƽǶ�
snr = 10;            % �����
K = 512;             % ������
 
dd = 0.5;            % ��Ԫ��� 
d=0:dd:(N-1)*dd;
A=exp(-1i*2*pi*d.'*sin(theta*derad));  %����ʸ

for i=1:length(Theta)
    X(i,:)=S;
end


X1=A*X;
Rxx=X1*X1'/K;
% ����ֵ�ֽ�
[EV,D]=eig(Rxx);                   %����ֵ�ֽ�
EVA=diag(D)';                      %������ֵ����Խ�����ȡ��תΪһ��
[EVA,I]=sort(EVA);                 %������ֵ���� ��С����
EV=fliplr(EV(:,I));                % ��Ӧ����ʸ������
% ����ÿ���Ƕȣ�����ռ���
M=length(Theta);
for iang = 1:361
    angle(iang)=(iang-181)/2;
    a=Line(Array.MicN,Array.ArrayD,angle(iang),D);
    En=EV(:,M+1:Array.MicN);                   % ȡ����ĵ�M+1��N����������ӿռ�
    Pmusic(iang)=1/(a'*En*En'*a);
end
Pmusic=abs(Pmusic);
Pmmax=max(Pmusic);
Pmusic=10*log10(Pmusic/Pmmax);            % ��һ������
h=plot(angle,Pmusic);
set(h,'Linewidth',2);
xlabel('�����/(degree)');
ylabel('�ռ���/(dB)');
set(gca, 'XTick',[-90:30:90]);
grid on
[y,local]=findpeaks(Pmusic);         
for i=1:length(local)
    Th(i)=angle(local(i));
end
Ph=[];