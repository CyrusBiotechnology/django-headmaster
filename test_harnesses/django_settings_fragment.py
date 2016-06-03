""" These settings should be appended to a Django settings file. They are the
minimum configuration needed to run Headmaster.
"""
import os

HEADMASTER = {
    'STATIC': [
        ('Headmaster-Test-Header', os.environ['HEADMASTER_TEST_STRING'])
    ]
}

MIDDLEWARE_CLASSES = (
    'django_headmaster.Middleware',
)
