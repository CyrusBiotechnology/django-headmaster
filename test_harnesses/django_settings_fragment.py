""" These settings should be appended to a Django settings file. They are the
minimum configuration needed to run Headmaster.
"""
HEADMASTER = {
    'STATIC': [
        ('test', 'SyONDFv4a')
    ]
}

MIDDLEWARE_CLASSES = (
    'django_headmaster.Middleware',
)
