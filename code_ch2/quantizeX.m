function x_out = quantizeX(x_in, n_level, x_max, x_min)
%   Quantization function

% level range array
step_range = (x_max-x_min)/n_level;

stair_array = [x_min:step_range:x_max x_max];
disp(stair_array)
x_out = x_in;

% straight forward loop search
for i = 1:(length(stair_array)-1)
    % check x_in are within stair_array[i]
    if (x_in >= stair_array(i)) && (x_in <= stair_array(i+1))
        x_out = stair_array(i);
    end
end


end

