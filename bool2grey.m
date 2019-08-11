function img_grey = bool2grey(img_bool, grey_percent)
%bool2GREY 将bool矩阵根据传入的灰度比例转换为灰度图像并显示，返回灰度矩阵

img_grey = img_bool .* grey_percent;
% imshow(img_grey);

end