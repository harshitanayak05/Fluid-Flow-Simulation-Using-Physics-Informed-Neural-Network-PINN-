# Fluid-Flow-Simulation-Using-Physics-Informed-Neural-Network-PINN-
Physics-Informed Neural Network approach for accurate fluid flow and pressure prediction in water pipelines using MATLAB.
This project presents a Physics–Informed Neural Network (PINN) approach for fluid flow and pressure prediction in water pipelines using MATLAB. The system combines machine learning techniques with the physical laws of fluid dynamics to provide accurate and physically consistent pressure predictions.

Traditional Computational Fluid Dynamics (CFD) methods provide high accuracy but require large computational resources and processing time. To overcome these limitations, this project uses a PINN model that integrates both data-driven learning and momentum conservation equations directly into the neural network training process.

The model takes Time and Flow Rate as input parameters and predicts the corresponding Pressure values in the pipeline. A hybrid loss function combining Mean Squared Error (MSE) and physics residual error ensures accurate and realistic predictions.

The project is implemented in MATLAB using the Neural Network Toolbox and the Levenberg–Marquardt (trainlm) algorithm for efficient training and convergence.

## Features
- Physics–Informed Neural Network (PINN) implementation
- Fluid flow and pressure prediction
- MATLAB-based simulation and visualization
- Hybrid learning using data and physical laws
- Pressure prediction using time and flow rate
- Mean Squared Error (MSE) performance evaluation
- Measured vs Predicted pressure visualization
- Pressure contour visualization

## Technologies Used
- MATLAB
- Neural Network Toolbox
- Physics–Informed Neural Networks (PINN)
- Machine Learning
- Fluid Dynamics
- Levenberg–Marquardt Algorithm (trainlm)

## Methodology
1. Load water pipeline dataset
2. Preprocess time, flow rate, and pressure data
3. Design feedforward neural network
4. Train the model using experimental data
5. Integrate momentum conservation equation
6. Compute hybrid PINN loss function
7. Predict pressure values
8. Visualize results using MATLAB plots

## Input Parameters
- Time (s)
- Flow Rate (L/s)

## Output Parameter
- Pressure (Pa)

## Results

### 1. Measured vs Predicted Pressure Plot
This graph compares the measured pressure values with the PINN predicted pressure values over time.  
The close overlap between the curves shows the high accuracy of the developed model.

![Measured vs Predicted Pressure](Comparison%20graph.jpg)

---

### 2. Pressure Contour Plot
This contour plot visualizes the variation of predicted pressure with respect to flow rate and time.  
Smooth color transitions indicate stable and physically consistent predictions.

![Pressure Contour Plot](PINN%20pressure.jpg)

---

### 3. Neural Network Training Performance
This figure shows the neural network training performance and convergence behavior during MATLAB training using the Levenberg–Marquardt algorithm.

![Neural Network Training](Neural%20network%20training.jpg)
## Applications
- Smart Water Distribution Systems
- Pipeline Monitoring
- Leak Detection
- Predictive Maintenance
- Industrial Fluid Flow Analysis
- Smart Infrastructure Systems
- IoT-based Water Management

## Advantages
- Reduced computational complexity
- Faster prediction compared to CFD
- Physically consistent predictions
- Better generalization capability
- Improved reliability and accuracy
- Efficient visualization and analysis

## Future Scope
- Real-time monitoring using IoT sensors
- Integration with smart city infrastructure
- Extension to large pipeline networks
- Advanced deep learning architectures
- GUI development for easier analysis

## Authors
- Harshita S
- H R Madalambika
