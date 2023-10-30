module github.com/containrrr/watchtower

go 1.12

// Use non-vulnerable runc (until github.com/containerd/containerd v1.6.0 is stable)
replace github.com/opencontainers/runc => github.com/opencontainers/runc v1.0.3

require (
	github.com/Microsoft/go-winio v0.4.17 // indirect
	github.com/containrrr/shoutrrr v0.5.2
	github.com/docker/cli v20.10.8+incompatible
	github.com/docker/distribution v2.7.1+incompatible
	github.com/docker/docker v24.0.7+incompatible
	github.com/docker/docker-credential-helpers v0.6.1 // indirect
	github.com/docker/go-connections v0.4.0
	github.com/docker/go-units v0.4.0 // indirect
	github.com/gogo/protobuf v1.3.2 // indirect
	github.com/johntdyer/slack-go v0.0.0-20180213144715-95fac1160b22 // indirect
	github.com/johntdyer/slackrus v0.0.0-20180518184837-f7aae3243a07
	github.com/kr/pretty v0.2.1 // indirect
	github.com/matttproud/golang_protobuf_extensions v1.0.2-0.20181231171920-c182affec369 // indirect
	github.com/moby/term v0.0.0-20210619224110-3f7ff695adc6 // indirect
	github.com/morikuni/aec v0.0.0-20170113033406-39771216ff4c // indirect
	github.com/onsi/ginkgo v1.14.2
	github.com/onsi/gomega v1.10.3
	github.com/opencontainers/go-digest v1.0.0 // indirect
	github.com/opencontainers/image-spec v1.0.2 // indirect
	github.com/pelletier/go-toml v1.8.1 // indirect
	github.com/prometheus/client_golang v1.7.1
	github.com/prometheus/procfs v0.6.0 // indirect
	github.com/robfig/cron v0.0.0-20180505203441-b41be1df6967
	github.com/sirupsen/logrus v1.8.1
	github.com/spf13/cobra v1.0.0
	github.com/spf13/pflag v1.0.5
	github.com/spf13/viper v1.6.3
	github.com/stretchr/objx v0.2.0 // indirect
	github.com/stretchr/testify v1.6.1
	golang.org/x/net v0.0.0-20210226172049-e18ecbb05110
	golang.org/x/sys v0.0.0-20210831042530-f4d43177bf5e // indirect
	golang.org/x/text v0.3.4 // indirect
	golang.org/x/time v0.0.0-20200630173020-3af7569d3a1e // indirect
	google.golang.org/protobuf v1.27.1 // indirect
	gopkg.in/yaml.v2 v2.4.0 // indirect
	gotest.tools v2.2.0+incompatible // indirect
	gotest.tools/v3 v3.0.3 // indirect
)
