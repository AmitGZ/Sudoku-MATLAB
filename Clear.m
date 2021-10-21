function Clear(~, ~ , window)
%this function clears all the cells, restarts the board

    for ii= 1:9
        for jj= 1:9
             set(window.cell(ii,jj) , 'string',[], 'enable','on');
        end
    end
end