FROM python:3

ADD script.py /script.py
ADD requirements.txt /requirements.txt

RUN pip3 install -r /requirements.txt

#ENTRYPOINT ["python3", "/script.py", "--input-dir", "$inputDataset", "--output-dir", "$outputDir"]
#ENTRYPOINT ["bash", "-c", "python3 /script.py --input-dir \"$inputDataset\" --output-dir \"$outputDir\""]
ENTRYPOINT [ "python3", "/script.py", "-i", "$inputDataset", "-o", "$outputDir" ]

