function track_whiskers(video_name)
% This code was designed to track the thickest whisker in the video


% read the video
V = VideoReader([video_name '.mp4']);
Nframe=1;


while hasFrame(V)
    % read current frame
    raw_frame_tmp=readFrame(V);
    %select area and pass to black and white
    Frame=raw_frame_tmp(1:end-150,300:end-500,:);

    % Plot image
    imshow(Frame)
    hold on
    title(['Frame number = ' num2str(Nframe)])

    % Detect head's border
    FRameBW=double(rgb2gray(Frame));

    % Detect Whisker
    Gx = imgradientxy(FRameBW);
    [valwhisker,Y]=max(Gx(1:450,:),[],2);
    Xtmp=1:size(Gx,1);
    plot(Y(valwhisker>200),Xtmp(valwhisker>200),'.','LineWidth',3)

    pause(0.01)
    hold off
    Nframe=Nframe+1;
end

% Example video from:
% Kyle S Severson, Duo Xu, Hongdian Yang, Daniel H O'Connor (2019)
% Coding of whisker motion across the mouse face eLife 8:e41535

%https://doi.org/10.7554/eLife.41535
    
end