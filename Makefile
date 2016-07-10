VIRTUALENV="virtualenv"
VIRTUALENV_DIR="venv"
LIB_DIR="src/lib"

setup: venv deps

venv:
	test -d venv || ("${VIRTUALENV}" "${VIRTUALENV_DIR}" || true)

deps:
	( \
		source "${VIRTUALENV_DIR}"/bin/activate; \
		pip install --target="${LIB_DIR}" -Ur requirements.txt; \
	)

freeze:
	( \
		source "${VIRTUALENV_DIR}"/bin/activate; \
		PYTHONPATH="${LIB_DIR}" pip freeze > requirements.txt; \
	)

clean:
	git clean -Xdf "${VIRTUALENV_DIR}" "${LIB_DIR}" 
