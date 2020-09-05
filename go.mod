module github.com/primedata-ai/kgs

go 1.13

require (
	github.com/asaskevich/EventBus v0.0.0-20180315140547-d46933a94f05
	github.com/golang/protobuf v1.3.2
	github.com/google/wire v0.4.0
	github.com/short-d/app v0.0.0-20200118110133-668ef4ee1b79
	google.golang.org/grpc v1.26.0
)

// Please uncomment the following line for local debugging purpose
// replace github.com/short-d/app => ../app

replace github.com/short-d/kgs => ./
