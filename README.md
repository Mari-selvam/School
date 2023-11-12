# School Management System with Django DBMS

Welcome to the School Management System, a web application built with Django to manage various aspects of a school, including administration, teacher, and student functionalities.

## Table of Contents

- [Features](#features)
- [Installation](#installation)
- [Usage](#usage)
- [Routes](#routes)
  - [Admin](#admin)
  - [School](#school)
  - [Home](#home)
  - [Create Account](#create-account)
    - [Student](#create-accountstudent)
    - [Teacher](#create-accountteacher)
  - [Teacher](#teacher)
  - [Student](#student)
- [Contributing](#contributing)
- [License](#license)

## Features

- **Admin Panel:** Manage school data, users, and settings.
- **School Dashboard:** Overview of school activities and statistics.
- **User Registration:** Create accounts for students and teachers.
- **Teacher Interface:** Allows teachers to manage classes, assignments, and student grades.
- **Student Interface:** Students can view assignments, submit work, and check their grades.

## Installation

1. Clone the repository:

   ```bash
   git clone https://github.com/Mari-selvam/School.git
   ```


2. Change directory:

   ```bash
   cd school-management-system
   ```

3. Install dependencies:

   ```bash
   pip install -r requirements.txt
   ```

4. Apply database migrations:

   ```bash
   python manage.py migrate
   ```

5. Create a superuser for the admin panel:

   ```bash
   python manage.py createsuperuser
   ```

6. Run the development server:

   ```bash
   python manage.py runserver
   ```

   The application will be accessible at [http://127.0.0.1:8000/](http://127.0.0.1:8000/).

## Usage

1. Access the admin panel at [http://127.0.0.1:8000/admin/](http://127.0.0.1:8000/admin/) using the superuser credentials.

2. Navigate through the school dashboard, create accounts for students and teachers.

3. Access teacher and student interfaces to manage classes, assignments, and grades.

## Routes

### Admin

- `/admin/`: Admin panel for managing school data and settings.

### School

- `/school/`: School dashboard providing an overview of activities and statistics.

### Home

- `/home/`: Home page for the School Management System.

### Create Account

- `/create-account/`: Create an account for a user.

#### Create Account/Student

- `/create-account/student/`: Create an account for a student.

#### Create Account/Teacher

- `/create-account/teacher/`: Create an account for a teacher.

### Teacher

- `/school/teacher/`: Teacher interface for managing classes, assignments, and grades.

### Student

- `/school/student/`: Student interface for viewing assignments, submitting work, and checking grades.

## Contributing

If you'd like to contribute, please fork the repository and create a pull request. Issues and feature requests are also welcome.

## License

This project is licensed under the [MIT License](LICENSE).
```

Feel free to customize the content and structure based on your specific project details.