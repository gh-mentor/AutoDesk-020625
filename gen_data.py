"""
This app uses Python, numpy, pandas, matplotlib to generate a set of data points and plot them on a graph.
"""

# Import the necessary libraries, which should be installed in your Python environment
import numpy as np                   # numpy is a library for numerical computing
import pandas as pd                 # pandas is a library for data manipulation and analysis
import matplotlib.pyplot as plt     # matplotlib is a library for plotting data


"""
Create a function 'generate_data_points' that generates a set of 100 data points (x, f(x)) and returns them as a pandas data frame.
Arguments:
- 'x_range' is a tuple of two integers representing the rang0 e of x values to generate.
Returns:
- A pandas data frame with two columns, 'x' and 'y'.
Details:
- 'x' values are generated randomly between x_range[0] and x_range[1].
- 'y' values are generated as a non-linear function of x with excessive random noise: y = x ^ 1.5  + noise.
- The data frame is sorted by the 'x' values.
- The data frame has 100 rows.
Error Handling:
- Raise a ValueError if x_range is not a tuple of two integers.
- Raise a ValueError if x_range[0] is greater than x_range[1].
Examples:
- gendata((0, 100)) generates a data frame with 'x' values between 0 and 100.
- gendata((-100, 100)) generates a data frame with 'x' values between -100 and 100.
"""

def generate_data_points(x_range):
    if not isinstance(x_range, tuple) or len(x_range) != 2 or not all(isinstance(i, int) for i in x_range):
        raise ValueError("x_range must be a tuple of two integers")
    if x_range[0] > x_range[1]:
        raise ValueError("x_range[0] must be less than x_range[1]")
    np.random.seed(0)
    x = np.random.randint(x_range[0], x_range[1], 100)
    noise = np.random.normal(0, 10, 100)
    y = x ** 1.5 + noise
    df = pd.DataFrame({'x': x, 'y': y})
    df = df.sort_values(by='x').reset_index(drop=True)
    return df


"""
Create a function 'plot_data_points' that plots the data points on a graph.
Arguments:
- 'data' is a pandas data frame with two columns, 'x' and 'y'.
Returns:
- None.
Details:
- Plot the 'x' values on the x-axis and the 'y' values on the y-axis.
- Use a scatter plot to plot the data points.
- Label the x-axis as 'x' and the y-axis as 'f(x)'.
- Add a title to the graph.
Examples:
- plotdata(gendata((0, 100))) plots the data points generated between 0 and 100.
- plotdata(gendata((-100, 100))) plots the data points generated between -100 and 100.
"""

def plot_data_points(data):
    plt.scatter(data['x'], data['y'])
    plt.xlabel('x')
    plt.ylabel('f(x)')
    plt.title('Data Points')
    plt.show()


"""
Create a function 'main' that generates a set of data points and plots them on a graph.
Arguments:
- None.
Returns:
- None.
Details:
- Generate a set of data points using the 'generate_data_points' function.
- Plot the data points using the 'plot_data_points' function.
Examples:
- main() generates and plots a set of data points.
"""

def main():
    data = generate_data_points((0, 100))
    plot_data_points(data)

# Call the main function to generate and plot the data points
if __name__ == '__main__':
    main()



