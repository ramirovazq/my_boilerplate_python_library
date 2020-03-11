from my_boilerplate_python_library import __version__
from my_boilerplate_python_library import simple_text, simple_request

def test_version():
    assert __version__ == '0.1.0'

def test_text():
	assert simple_text() == "This is a simple hello world."

def test_request():
	response = simple_request.a_request()
	assert response.status_code == 200