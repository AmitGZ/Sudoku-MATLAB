function [bool] =isValid(matrix, row ,col, val)
%this function receives the matrix, row and column and a value
%and checks if the value in cell is valid

    bool=0;
%checking the row 
    for ii = 1:9
        if(ii ~= row && matrix(ii,col)== val)
            return;
        end
    end


%checking the column
    for jj = 1:9
        if(jj ~= col && matrix(row,jj)== val)
            return;
        end
    end


%Checking the 3x3 square
    squareX=3*floor((row-1)/3);
    squareY=3*floor((col-1)/3);

    for ii = 1:3
        for jj = 1:3
            if(row~=squareX+ii && col~=squareY+jj)
                if(matrix(squareX+ii,squareY+jj)==val)
                    return;
                end
            end
        end
    end
    
%If nothing is invalid return true
    bool=1;
end