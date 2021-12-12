function  refreshWindow(matrix,window)
    for ii= 1:9
        for jj= 1:9
            if(~isnan(matrix(ii,jj)))
                set(window.cell(ii,jj) , 'string',matrix(ii,jj));
            end
        end
    end
end