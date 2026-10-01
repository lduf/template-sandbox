FROM python:3.13-slim
ARG VERSION=dev
ARG COMMIT=unknown
ENV APP_VERSION=${VERSION} APP_COMMIT=${COMMIT}
USER nobody
CMD ["python", "-c", "import os; print(os.environ['APP_VERSION'], os.environ['APP_COMMIT'])"]
