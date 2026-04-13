FROM python:3.9-slim

WORKDIR /app

# Install dependencies securely
COPY app/requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# Copy app code
COPY app/ .

EXPOSE 5000

CMD ["python", "app.py"]
