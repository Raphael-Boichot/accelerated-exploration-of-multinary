function [price] = price_calculation(prices_list,target_list)
%Calculate the price of a set of experiment
%
%:param list(str,float) prices_list: list of possible targets and associated price
%:param list(str) targets: list of targets associated to one set of linear gradients or planar gradients
%:return: price: total price of the targets required for a set of linear gradients or planar gradients
%:rtype: float

price=0;
for i=1:size(target_list)
   index=find(strcmp(target_list(i),prices_list(:,1)));
   if isempty(index)==0 %if we found the target in the price list. 
    price=price+str2num(prices_list(index,2));
   end
end
end

