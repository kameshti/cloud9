FROM python:3.7.3-stretch

## Complete Step 1:
# Create a Working Directory
WORKDIR /app



## Complete Step 2:
# Copy source code to working directory
copy . app.py /app/

## Complete Step 3:
# Install packages from requirements.txt
# hadolint ignore=DL3013
RUN pip install --no-cache-dir --upgrade pip &&\
    pip install --no-cache-dir --trusted-host pypi.python.org -r requirements.txt

EXPOSE 80

# Run app.py at container launch
CMD ["python", "app.py"]
