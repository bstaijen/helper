FROM golang:1.6

# Download and install any required third party dependencies into the container.
RUN go get golang.org/x/crypto/bcrypt \
    && go get github.com/go-sql-driver/mysql \
    && go get github.com/gorilla/mux \
    && go get github.com/dgrijalva/jwt-go \
    && go get github.com/urfave/negroni \
    && go get github.com/buger/jsonparser \
    && go get github.com/joho/godotenv \
    && go get github.com/aws/aws-sdk-go/aws \
    && go get github.com/aws/aws-sdk-go/aws/credentials \
    && go get github.com/aws/aws-sdk-go/aws/session \
    && go get github.com/aws/aws-sdk-go/service/s3 \
    && go get github.com/aws/aws-sdk-go/service/s3/s3manager \
    && go get github.com/sirupsen/logrus \
    && go get github.com/meatballhat/negroni-logrus

# 
ADD . /go/src/github.com/bstaijen/helper/

