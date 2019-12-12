function [ randomseq ] = generateIntegerSequences( n,length, min, max,replacement )
%GENERATEINTEGERSEQUENCES Summary of this function goes here
%   Detailed explanation goes here
    url = 'https://api.random.org/json-rpc/1/invoke'
    apiKey = 'd20ec3db-cfdf-4265-88ef-765565b21425'
    params = struct('apiKey',apiKey, 'n',n, 'length',length, 'min',min, 'max',max, 'replacement',replacement)
    header = weboptions('MediaType','application/json')
    req = struct('jsonrpc' ,'2.0', 'method','generateIntegerSequences', 'params',params, 'id',0)
    response = webwrite(url, req, header)
    randomseq = response.result.random.data
end

