echo "Package lambda function"

# Remove last build files
rm -rf dist
mkdir dist

# Copy code and pip dependencies
cp -R src dist/
pip install -U -r test.requirements.txt -t dist

# Zip the lambda function package
cd dist 
find . -name "*.pyc" -delete
find . -name "__pycache__"  -delete
zip -r ../function.zip *