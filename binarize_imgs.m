function [] = binarize_imgs(Path_OriginImgs, Path_BinarizedImgs)
    imgs_name = dir(fullfile(Path_OriginImgs, '/*.bmp'));
    for i = 1:length(imgs_name)
        img_path = fullfile(imgs_name(i).folder,imgs_name(i).name);
        img_gray = rgb2gray(imread(img_path));
        img_dithered = Floyd_Steinberg_Dithering(img_gray);
        imwrite(img_dithered, fullfile(Path_BinarizedImgs, imgs_name(i).name));
    end
end