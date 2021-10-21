function cellCheck(cell, ~)
%this function checks if User input to the cell is valid
%only integers 1-9 are valid
%if the input is invalid the function deletes user input

    num = get(cell,'String');
    num= floor(str2double(num));
    if(num>0 && num<10)
        set(cell , 'string',num);
    else 
        %if invalid set to empty
        set(cell , 'string',[]);
    end
end