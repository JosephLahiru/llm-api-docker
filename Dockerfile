WORKDIR /llm-api

COPY . /llm-api/
ENV FORCE_CMAKE="1"
ARG CMAKE_ARGS
ENV CMAKE_ARGS=${CMAKE_ARGS:-""}

RUN pip install --no-cache-dir --upgrade pip && \
    pip install --no-cache-dir -r requirements.txt

ENV PYTHONPATH="/llm-api"

CMD ["python", "./app/main.py"]
