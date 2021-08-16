%% a(ii) Loop Over Dataset
% Loop over the 200 training images and 100 test images and create masks for each.
% You can loop over filenames in a directory with the following code
close all
clear all
% In this part I am creating mask for image/train and
% ground_truth/gray/train
image_directory = 'C:\Users\HSA\Desktop\FALL 2020\Advanced image\project1\Project1_extracted data\BSDS300\images\train\'; % with training 
seg_directory = 'C:\Users\HSA\Desktop\FALL 2020\Advanced image\project1\Project1_extracted data\BSDS300\ground_truth\gray\train\'; 
mask_directory= 'C:\Users\HSA\Desktop\FALL 2020\Advanced image\project1\Project1_extracted data\BSDS300\masks\gray\train\'; 
image_filenames = dir([image_directory,'*.jpg']);
seg_filenames = dir([seg_directory,'*.seg']);

for f=1:length(image_filenames)
image_filename = image_filenames(f).name;
seg_filename = seg_filenames(f).name;
mask_filename=[mask_directory,image_filename(1:end-4),'.png'];
make_mask([seg_directory,seg_filename],mask_filename)
end

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% In this part I am creating mask for image/test and
% ground_truth/gray/test
image_directory = 'C:\Users\HSA\Desktop\FALL 2020\Advanced image\project1\Project1_extracted data\BSDS300\images\test\'; % with training 
seg_directory = 'C:\Users\HSA\Desktop\FALL 2020\Advanced image\project1\Project1_extracted data\BSDS300\ground_truth\gray\test\'; 
mask_directory= 'C:\Users\HSA\Desktop\FALL 2020\Advanced image\project1\Project1_extracted data\BSDS300\masks\gray\test\'; 
image_filenames = dir([image_directory,'*.jpg']);
seg_filenames = dir([seg_directory,'*.seg']);

for f=1:length(image_filenames)
image_filename = image_filenames(f).name;
seg_filename = seg_filenames(f).name;
mask_filename=[mask_directory,image_filename(1:end-4),'.png'];
make_mask([seg_directory,seg_filename],mask_filename)
end

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% In this part I am creating mask for image/train and
% ground_truth/color/train
image_directory = 'C:\Users\HSA\Desktop\FALL 2020\Advanced image\project1\Project1_extracted data\BSDS300\images\train\'; % with training 
seg_directory = 'C:\Users\HSA\Desktop\FALL 2020\Advanced image\project1\Project1_extracted data\BSDS300\ground_truth\color\train\'; 
mask_directory= 'C:\Users\HSA\Desktop\FALL 2020\Advanced image\project1\Project1_extracted data\BSDS300\masks\color\train\'; 
image_filenames = dir([image_directory,'*.jpg']);
seg_filenames = dir([seg_directory,'*.seg']);

for f=1:length(image_filenames)
image_filename = image_filenames(f).name;
seg_filename = seg_filenames(f).name;
mask_filename=[mask_directory,image_filename(1:end-4),'.png'];

make_mask([seg_directory,seg_filename],mask_filename)
end

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% In this part I am creating mask for image/test and
% ground_truth/color/test
image_directory = 'C:\Users\HSA\Desktop\FALL 2020\Advanced image\project1\Project1_extracted data\BSDS300\images\test\'; % with training 
seg_directory = 'C:\Users\HSA\Desktop\FALL 2020\Advanced image\project1\Project1_extracted data\BSDS300\ground_truth\color\test\'; 
mask_directory= 'C:\Users\HSA\Desktop\FALL 2020\Advanced image\project1\Project1_extracted data\BSDS300\masks\color\test\'; 
image_filenames = dir([image_directory,'*.jpg']);
seg_filenames = dir([seg_directory,'*.seg']);

for f=1:length(image_filenames)
image_filename = image_filenames(f).name;
seg_filename = seg_filenames(f).name;
mask_filename=[mask_directory,image_filename(1:end-4),'.png'];
make_mask([seg_directory,seg_filename],mask_filename)
end