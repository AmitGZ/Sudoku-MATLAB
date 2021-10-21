function matrix =recursionSolve(matrix)
%This function receives 9x9 matrix and solves it recursively
    for ii= 1:9
        for jj= 1:9
            if isnan(matrix(ii,jj))
                for n = 1:9
                    if(isValid(matrix,ii,jj,n))
                        matrix(ii,jj)=n;
                        matrix=recursionSolve(matrix);
                        if(isSolved(matrix))
                            return;
                        else
                            matrix(ii,jj)=nan;
                        end
                    end
                end  
                return;
            end
        end
    end

end