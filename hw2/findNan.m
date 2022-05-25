function result = findNan(data)
isNan = isnan(data);
data(isNan) = 0;
result = data;
end