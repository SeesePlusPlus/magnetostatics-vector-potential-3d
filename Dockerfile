FROM seesemichaelj/sparselizard:v1.0.0-beta.3

COPY CMakeLists.txt /app/
COPY src /app/src

RUN mkdir /app/build
WORKDIR /app/build

RUN ls /usr/local/lib/
RUN cmake ..
RUN make

COPY src/magmesh.msh /app/build
