FROM python:3.7.3-stretch

## Step 1:
# Create a working directory
WORKDIR /project-ml-microservice-kubernetes

## Step 2:
# Copy source code to working directory
COPY .  app.py /project-ml-microservice-kubernetes/

## Step 3:
# Install packages from requirements.txt
# hadolint ignore=DL3013
RUN pip install --no-cache-dir --upgrade pip && \
pip install --no-cache-dir -r requirements.txt
# RUN make install

## Step 4:
# Expose port 80
EXPOSE 80

## Step 5:
# Run app.py at container launch
CMD ["python","app.py"]
