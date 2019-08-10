function img_bool = get_img_bool(img_path)
    img = imread(img_path);
    if ndims(img) == 3
        % RGB��ɫ��Ӻϳ�Ϊһ�����֣�������û��ת��Ϊʮ��������ɫ��ֻ�Ǽ���ӣ���Ϊ����ɫ�Ǻ�ɫ�ģ��ҵ�Ŀ�����ж�������ɫ�����⽵ά����
        img = img(:, :, 1) + img(:, :, 2) + img(:, :, 3); 
    end            
    img_bool = logical(img);
end