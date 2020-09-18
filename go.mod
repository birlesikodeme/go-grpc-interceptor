module github.com/birlesikodeme/go-grpc-interceptor

go 1.14

require (
	github.com/BurntSushi/toml v0.3.1 // indirect
	github.com/birlesikodeme/glog v1.0.0-beta
	github.com/golang/protobuf v1.4.2
	github.com/google/uuid v1.1.2 // indirect
	github.com/nicksnyder/go-i18n v1.10.1
	github.com/prometheus/client_golang v1.7.1
	github.com/renstrom/shortuuid v3.0.0+incompatible
	go.uber.org/atomic v1.6.0 // indirect
	go.uber.org/zap v0.1.0-beta.1.0.20170215015225-284f6ef9ad7b
	golang.org/x/net v0.0.0-20190620200207-3b0461eec859
	golang.org/x/tools v0.0.0-20191029190741-b9c20aec41a5 // indirect
	google.golang.org/genproto v0.0.0-20200918140846-d0d605568037 // indirect
	google.golang.org/grpc v1.27.0
)

replace google.golang.org/grpc => google.golang.org/grpc v1.3.0
