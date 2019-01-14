FROM ubuntu:18.04 AS dkrBuilder

RUN apt-get update && \
    apt-get install -y build-essential cmake wget libgmp-dev


WORKDIR /Marble

# install ntl
RUN mkdir build-ntl && cd build-ntl && \
    wget 'https://www.shoup.net/ntl/ntl-11.3.2.tar.gz' && \
    tar xzvf ntl-11.3.2.tar.gz && \
    cd "ntl-11.3.2/src" && \
    ./configure SHARED=on && \
    make -j $(nproc) && \
    make install


# install marble
COPY . .

RUN mkdir build && cd build && \
    cmake -DENABLE_THREADS=on .. && \
    make -j $(nproc)


WORKDIR /Marble/build
