function [bool] =isSolved(matrix)
%This function receives 9x9 matrix and checks if 
%the board is fully solved and its validity
%returns a boolean 

    bool=false;
    for ii= 1:9
        for jj= 1:9
              if(isnan(matrix(ii,jj)) || ~isValid(matrix,ii,jj,matrix(ii,jj)))
                  return;
              end
        end
    end
    %if everything checks return true
    bool=true;
end
