% Manejando videos
v = VideoReader("Whisker_video1.mp4");

%% Reproducir video
% while hasFrame(v)
%     vidFrame = readFrame(v);
%     image(vidFrame)
%     pause(1/v.FrameRate)
% end

%%%%%%%%%%%%%%%%%%%%%%%%

% %%%%%%%%%%%%%%% Seleccionar parte del video
% Nframe=1;
% while hasFrame(v)
%      vidFrame = readFrame(v);
%      Subframe=vidFrame(1:500,300:800,:);
%      
%      image(Subframe)
% 
%      Nframe=Nframe+1;
%      title(['Frame numero = ' num2str(Nframe)])
%      pause(1/v.FrameRate)
% end

%%%%%%%%%%%%%%% Pasar a blanco y negro
% Nframe=1;
% while hasFrame(v)
%      vidFrame = readFrame(v);
%      Subframe=vidFrame(1:500,300:800,:);
%      SubframeBW=sum(Subframe,3)./3;
%      image(SubframeBW)
% 
%      Nframe=Nframe+1;
%      title(['Frame numero = ' num2str(Nframe)])
%      pause(1/v.FrameRate)
% end

%%%%%%%%%%%%%%% Dibujar el whisker arriba del video
Nframe=1;
while hasFrame(v)
     vidFrame = readFrame(v);
     Subframe=vidFrame(1:500,300:800,:);
     SubframeBW=sum(Subframe,3)./3;
     
     image(Subframe)
     hold on

     % calcular maximo de cada fila
     [max_val,max_ind]=min(SubframeBW(1:400,:),[],2);
     plot(max_ind,1:size(max_ind,1),'.-r')
     hold off 

     Nframe=Nframe+1;
     title(['Frame numero = ' num2str(Nframe)])
     pause(1/v.FrameRate)
end

