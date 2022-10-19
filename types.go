package main

import (
	"rdma-device-plugin/ibverbs"
)

type Device struct {
	RdmaDevice ibverbs.IbvDevice
	NetDevice  string
	NumaNode   int64
}
