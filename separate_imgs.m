function [] = separate_imgs(Path_OriginImgs, Path_SeparatedImgs)
    imgs_name = dir(fullfile(Path_OriginImgs, '*.bmp'));
    temp_path = fullfile(imgs_name(1).folder,imgs_name(1).name);
    temp_img = get_img_bool(temp_path);
    resolution = size(temp_img);   % 获取图片的分辨率
    i = 1;
    while i <= length(imgs_name)
        mkdir(fullfile(Path_SeparatedImgs, imgs_name(i).name));
        
        target_img_path = fullfile(imgs_name(i).folder,imgs_name(i).name);
        target_img_bool = get_img_bool(target_img_path);
        
        for j_positive = i:length(imgs_name)
            % 向id变大的正方向 寻找图片 与第i张图片 进行对比
            contrast_img_path = fullfile(imgs_name(j_positive).folder,imgs_name(j_positive).name);
            contrast_img_bool = get_img_bool(contrast_img_path);  
                        
            if ~isequal(target_img_bool & contrast_img_bool, zeros(resolution))
                copyfile(contrast_img_path, fullfile(Path_SeparatedImgs, imgs_name(i).name, imgs_name(j_positive).name));
            else
                break;
            end            
        end
        
        i = j_positive;
        if i == length(imgs_name)
            break;
        end        
    end
end

