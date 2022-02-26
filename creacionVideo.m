video = VideoWriter('fractal.avi');
video.FrameRate = 15;
open(video);

 for i=1:200
     name = int2str(i);
     d = strcat(name,'.jpg');
     f = imread(d);
     frame = im2frame(f);
     writeVideo(video, frame);
 end
 
 close(video);