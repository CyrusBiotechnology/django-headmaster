# Django Static Headers

[![pypi-version]][pypi]

# Purpose

Django Headmaster is a small django middleware, distributed as a python package that 
inserts extra headers. Currently only static configurations are supported.

# Configuration

## Installation

Install from pypi!

    pip install django-headmaster

Now, crack open your settings.py file and add `django_headmaster` to your middlewares 
setting...

    MIDDLEWARE_CLASSES = (
        ...
        'django_headmaster.Middleware'
    )

Then configure Headmaster

    HEADMASTER = {
        'STATIC': [
            ('My-Header', os.environ.get('MY_HEADER', 'default')
        ]
    }

You're ready to rock!

