go build -ldflags "-X main.Version=v2.0.0-alpha.4 -X 'main.CommitID=`git rev-parse --short HEAD`"

go run -ldflags "-X main.Version=v2.0.0-alpha.4 -X 'main.CommitID=`git rev-parse --short HEAD`'" *.go

CGO_ENABLED=0 GOOS=linux GOARCH=amd64 go build -ldflags "-X main.Version=v2.0.0-alpha.4 -X 'main.CommitID=`git rev-parse --short HEAD`'" -o gotty_linux_amd641 *.go

gox -osarch="linux/amd64" -ldflags "-X main.Version=v2.0.0-alpha.4 -X 'main.CommitID=`git rev-parse --short HEAD`'"

mv gotty_linux_amd64 /Users/arashicage/workspace/workspace.topjoy/gitlab/docker-library/centos-gotty
