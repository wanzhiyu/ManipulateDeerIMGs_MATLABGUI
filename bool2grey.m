function img_grey = bool2grey(img_bool, grey_percent)
%bool2GREY ��bool������ݴ���ĻҶȱ���ת��Ϊ�Ҷ�ͼ����ʾ�����ػҶȾ���

img_grey = img_bool .* grey_percent;
% imshow(img_grey);

end