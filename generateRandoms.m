function [ randoms ] = generateIntegers( n, min, max, replacement )
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here
    url = 'https://api.random.org/json-rpc/1/invoke'
    apiKey = 'd20ec3db-cfdf-4265-88ef-765565b21425'
    params = struct('apiKey',apiKey, 'n',n, 'min',min, 'max',max, 'replacement',replacement)
    header = weboptions('MediaType','application/json')
    req = struct('jsonrpc' ,'2.0', 'method','generateIntegers', 'params',params, 'id',0)
    header = weboptions('MediaType','application/json')
    resopnse = webwrite(url, req, header)
    randoms = resopnse.result.random.data
end

