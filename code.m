% Goldsmiths University of London
% Author....: Carlos Manuel de Oliveira Alves
% Student...: cdeol003
% Created...: 01/01/2023

% Define the number of epochs (iterations) and the learning rate
numEpochs = 100;
learningRate = 0.1;

% Define the number of input and output dimensions
numInputs = 2;
numOutputs = 1;

% Define the number of examples to generate
numExamples = 1000;

% Generate random input data
X = randn(numExamples, numInputs);

% Generate random output data
y = randn(numExamples, numOutputs);

% Initialize the weights and biases of the network
weights = randn(numInputs, numOutputs);
biases = randn(1, numOutputs);

% Loop over the number of epochs
for epoch = 1:numEpochs

     % Loop over the training data
     for i = 1:numExamples

        % Extract the input and output data for the current example
        input = X(i,:);
        target = y(i);

        % Feed the input through the network to generate a predicted output
        output = input * weights + biases

        % Calculate the error between the predicted output and the correct output
        error = output - target;

        % Calculate the gradient of the error with respect to the weights and biases
        gradientW = error * input;
        gradientB = error;

        % Update the weights and biases using the gradient and the learning rate
        weights = weights - learningRate * gradientW;
        biases = biases - learningRate * gradientB;

    end

end