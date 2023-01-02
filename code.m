% Goldsmiths University of London
% Author....: Carlos Manuel de Oliveira Alves
% Student...: cdeol003
% Created...: 01/01/2023

% Define the number of epochs (iterations) and the learning rate
numEpochs = 100;
learningRate = 0.1;

% Initialize the weights and biases of the network
weights = randn(numInputs, numOutputs);
biases = randn(1, numOutputs);

