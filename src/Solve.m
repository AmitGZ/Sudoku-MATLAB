function [matrix,bool] =Solve( ~, ~, window)
%This function solves the board, outputs false and error if unsolvable,
%**this function uses another recursive function to solve the board

%copying the matrix from user input and checking to see if solvable
    matrix = zeros(9,9);
    for ii= 1:9
        for jj= 1:9
             matrix(ii,jj) = str2double(get(window.cell(ii,jj),'String'));
             if(~isValid(matrix,ii,jj,matrix(ii,jj)))
                 msgbox("Can't solve invalid");
                 bool=0;
                 return;
             end
        end
    end

%calling the recursive function to solve
    matrix = recursionSolve(matrix);

%outputing the answer to the screen
    for ii= 1:9
        for jj= 1:9
            set(window.cell(ii,jj) , 'string',matrix(ii,jj));
        end
    end
    bool=1;
end