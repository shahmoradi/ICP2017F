function main1
  x = 5;
  nestfun1
  function nestfun1 
      x = x + 1;
  end
  disp(['x = ',num2str(x)])
end