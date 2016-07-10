import unittest
from application import app


class TestCase(unittest.TestCase):
    def setUp(self):
        # Flask apps testing. See: http://flask.pocoo.org/docs/testing/
        app.config['TESTING'] = True
        app.config['CSRF_ENABLED'] = False
        app.config['FLASK_CONF'] = 'TEST'
        app.config['WTF_CSRF_ENABLED'] = False  # Needed to disable recaptcha.
        self.app = app.test_client()

    def tearDown(self):
        app.config['FLASK_CONF'] = ''

    def test_index(self):
        rv = self.app.get('/')
        assert 'Hello' in rv.data
