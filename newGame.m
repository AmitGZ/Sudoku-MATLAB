function matrix =newGame(~, ~ , window)
%This function outputs an unsolved board
%the way it works is it solves the current board and deletes random
%cells.

%solving the current board
    [matrix,bool] = Solve(0, 0 , window);
    if(bool==0)
        return;
    end

    %removing certain cells and disabling the others
    for ii= 1:9
        for jj= 1:9
            %1 in 3 cells won't be deleted this way
            if(randi([1,3]~=1))
                %deleting cell
                matrix(ii,jj)= nan;
                set(window.cell(ii,jj) , 'String',[] ,'enable','on');
            else
                %setting cell
                set(window.cell(ii,jj) , 'String',matrix(ii,jj),...
                                         'enable','off');
            end
        end
    end

end