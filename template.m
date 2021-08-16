function template =template()

digits = '0123456789';
template = zeros(321,481);
for a = 1:length(digits)
    template(a,:,:) = imread(['\BSDS300\images\test\',digits(a),'.jpg']);
    
end