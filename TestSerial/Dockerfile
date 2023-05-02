ARG BASE_IMAGE=kumatea/tensorflow:2.4.1-py39

FROM --platform=linux/arm64/v8 ${BASE_IMAGE} as userland

# Install dependencies and clone userland repository
RUN apt-get update && apt-get install -f -y \
        cmake \
        build-essential \
        git \
        sudo \
    # Clean up the apt cache
    && apt-get clean && rm -rf /var/lib/apt/lists/* \
    # Clone userland repository
    && git clone \
        https://github.com/msherman64/userland \
        -b wip/64bit \
        /usr/local/src/userland

# Build userland
WORKDIR /usr/local/src/userland
RUN ./buildme --aarch64

FROM --platform=linux/arm64/v8 ${BASE_IMAGE} AS base

# Upgrade pip to the latest version
RUN pip install --upgrade pip

FROM base AS serial

# Install pyserial and platformio (specify versions for reproducibility)
RUN echo "installing pyserial platformio" \
    && pip install pyserial \
    && pip install platformio \
    && echo "installation done"

# Consider copying only what you need
COPY . .

# Set the default command for the container
CMD ["./python_ts_run.sh"]
