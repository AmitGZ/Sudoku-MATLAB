function Check(~, ~, window)
%this function checks the whole board and outputs a message if
%the current state is valid or not

    matrix = zeros(9,9);
    for ii= 1:9
        for jj= 1:9
             matrix(ii,jj) = str2double(get(window.cell(ii,jj),'String'));
             if(~isValid(matrix,ii,jj,matrix(ii,jj)))
                 msgbox("Invalid");
                 return;
             end
        end
    end
    msgbox("Valid");
end