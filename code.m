% Goldsmiths University of London
% Author....: Carlos Manuel de Oliveira Alves
% Student...: cdeol003
% Created...: 01/01/2023

% This code generates numExamples random input-output pairs, with numInputs dimensions 
% for the input data and numOutputs dimensions for the output data. The input data is 
% generated using the randn function, which generates random values from a normal distribution 
% with mean 0 and standard deviation 1. The output data is generated using the same function.

% Customize this code to generate input-output pairs in a specific way, depending on your needs. 
% For example, you might want to generate input data from a specific distribution or 
% generate output data based on a function of the input data.

% Define the number of input and output dimensions
numInputs = 2;
numOutputs = 1;

% Define the number of examples to generate
numExamples = 1000;

% Generate random input data
X = randn(numExamples, numInputs);

% Generate random output data
y = randn(numExamples, numOutputs);

% Define the number of epochs (iterations) and the learning rate
numEpochs = 100;
learningRate = 0.1;

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

% >> Prepare data for plotting :

% Extract the first input dimension and use it as the x-axis data
x = X(:,1);

% Extract the second input dimension and use it as the y-axis data
y = X(:,2);

% Calculate the predicted output for each example
predictions = X * weights + biases;

% Create a scatter plot of the input data
scatter(x, y);

% Add a line plot of the predicted output
hold on;
plot(predictions);


