function object = robustWebRead(webAddress)
    try
        disp('Reading data from the web address...');
        object = webread(webAddress);
        disp('Done.');
    catch
        disp('The requested web address does not exist! Gracefully exiting...');
        object = [];
        return
    end
end