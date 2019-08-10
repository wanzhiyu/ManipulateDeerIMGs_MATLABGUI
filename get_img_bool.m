function img_bool = get_img_bool(img_path)
    img = imread(img_path);
    if ndims(img) == 3
        % RGB三色相加合成为一个数字，我这里没有转换为十六进制颜色而只是简单相加，因为背景色是黑色的，我的目标是判断有无颜色，纯粹降维即可
        img = img(:, :, 1) + img(:, :, 2) + img(:, :, 3); 
    end            
    img_bool = logical(img);
end