FROM python:3

# Install Django
RUN pip install django==3.2

# Copy your application code into the container
COPY . .

# Run migrations
RUN python manage.py migrate

# Define the command to run your Django application
CMD ["python", "manage.py", "runserver", "0.0.0.0:8001"]

