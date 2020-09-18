package glog

import (
	"time"

	log "github.com/birlesikodeme/glog"
	"golang.org/x/net/context"
	"google.golang.org/grpc"
)

var _ grpc.UnaryServerInterceptor = UnaryLogHandler

func UnaryLogHandler(ctx context.Context, req interface{}, info *grpc.UnaryServerInfo, handler grpc.UnaryHandler) (resp interface{}, err error) {

	start := time.Now()

	resp, err = handler(ctx, req)

	end := time.Now()
	latency := end.Sub(start)

	if err != nil {
		log.Infof("[ERR] %s took: %s err: %s", info.FullMethod, latency, err)
	} else {
		log.Infof("[INF] %s took: %s", info.FullMethod, latency)

	}

	return
}
