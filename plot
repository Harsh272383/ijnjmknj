import pandas as pd
import numpy as np
import matplotlib.pyplot as plt
file_path = input("Enter the path to the local CSV file: ")
df = pd.read_csv(file_path)
url = input("Enter the URL of the CSV file: ")
df = pd.read_csv(url)
print("Column Names:")
print(df.columns.tolist())

print("\nFirst Two Rows:")
print(df.head(2))
url = "https://example.com/your_data.csv"
df = pd.read_csv(url)
selected_columns = ["Column1", "Column2"]  # Replace with your column names
data_array = df[selected_columns].to_numpy()
# Scatter Plot
if len(selected_columns) == 2:
    x = data_array[:, 0]
    y = data_array[:, 1]
    plt.scatter(x, y)
    plt.xlabel(selected_columns[0])
    plt.ylabel(selected_columns[1])
    plt.title("Scatter Plot")
    plt.show()
    
# Line Graph
if len(selected_columns) == 2:
    x = data_array[:, 0]
    y = data_array[:, 1]
    plt.plot(x, y)
    plt.xlabel(selected_columns[0])
    plt.ylabel(selected_columns[1])
    plt.title("Line Graph")
    plt.show()
