UART = serialport("COM12",2000000,"Timeout",100000);%串口配置
fs=10000;%采样频率
t=30;%时间
video= linspace(0,0,fs*(t+1));%一维空数组
video_ture= linspace(0,0,fs*(t+1));%一维空数组
m=linspace(0,t+1,fs*(t+1));%一维空数组
qian=0;
hou=0;
  data = read(UART,fs*t*2,"uint16");%串口读数
  %disp(data);
  j=1;
for i=1:fs*t*2-1
   
   if(fix(data(i)/128))%为10XXXXXX
      
        qian=data(i);
       % disp(qian);
        hou=data(i+1);
       % disp(hou);
                if(fix(qian/128)&&fix(hou/64)&&~fix(hou/128))%后为01XXXXXX
                    num=(qian-128)*64+(hou-64); %转化
                    disp(num);
                    %num=num-440;
                    
                    num=num*3/10000;                  
                                if(fix(qian(j)/160))%为101XXXXX
                                    num=num-4096;%补码转换原码
                                end
                video(j)=num;%保存num于数组
                j=j+1;
                else
                video(j)=0;
                j=j+1;
                end
   end
end
for k=2:fs*t-1
      video_ture(k)=(video(k-1)+video(k)+video(k+1))/3; 
end
plot(m*10000,video,m*10000,video_ture);
%disp(video);%显示数组
%pause(10);%延迟10sz
sound(video,fs);%播放
delete(UART);%删除串口