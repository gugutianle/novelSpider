rm -rf dist
pandoc -S README.md -o README.rst
python setup.py sdist bdist_wheel
twine upload dist/*
