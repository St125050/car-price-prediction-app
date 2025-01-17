# Step 1: Use a Python base image
FROM python:3.8-slim

# Step 2: Set a working directory inside the container
WORKDIR /app

# Step 3: Copy the requirements file into the container
COPY requirements.txt /app/

# Step 4: Install the required dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Step 5: Copy the rest of the application code into the container
COPY . /app/

# Step 6: Expose the port on which Streamlit will run
EXPOSE 8425

# Step 7: Define the command to run your Streamlit app
CMD ["streamlit", "run", "app.py"]
