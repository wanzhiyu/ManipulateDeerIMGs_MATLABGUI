function [] = grey_imgs_byPercent(Path_OriginImgs, Path_GreyedImgs, MinGreyPercent, MaxGreyPercent)
    imgs_name = dir(fullfile(Path_OriginImgs, '/*.bmp'));
    for i = 1:length(imgs_name)
        img_path = fullfile(imgs_name(i).folder,imgs_name(i).name);
        img_bool = get_img_bool(img_path);
        grey_percent = MinGreyPercent + (MaxGreyPercent - MinGreyPercent)/(length(imgs_name)-1) * (i-1);
        img_grey = bool2grey(img_bool, grey_percent);
        imwrite(img_grey, fullfile(Path_GreyedImgs, imgs_name(i).name));
    end
end

