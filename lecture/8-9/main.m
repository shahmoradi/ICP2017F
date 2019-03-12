function main
    nestedfun1
    nestedfun2
    
    function nestedfun1
        myvar = 10;
    end

    function nestedfun2
        myvar = myvar + 2;
    end
    myvar;
    disp(['myvar = ',num2str(myvar)]);
    disp(['class(myvar) = ',class(myvar)]);
end
