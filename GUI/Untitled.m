clear all;
str='30;50;60;   ';
if str(length(str))==';'
    
end
Theta=strsplit(str,';');
[M,N]=size(Theta);
val=zeros(1,N);
for i=1:N
    %str2num(Theta(i))+6
    val(i)=str2num(Theta{1,i});
end


