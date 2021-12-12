function matrix =recursionSolve(matrix,window)
%This function receives 9x9 matrix and solves it recursively
    for jj= 1:9
        for ii= 1:9
            if isnan(matrix(ii,jj))
                for n = 1:9
                    if(isValid(matrix,ii,jj,n))
                        matrix(ii,jj)=n;
                        refreshWindow(matrix,window);
                        pause(0.01);
                        matrix=recursionSolve(matrix,window);
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