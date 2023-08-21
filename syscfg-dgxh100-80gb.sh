CPU_CORES_PER_RANK=8

### For HPL
GPU_CLOCK="1593,1275"

## Use this setting for the DGX H100 OSFP Ports
## This is default on the DGX H100 80GB nodes.
UCX_NET_DEVICES="mlx5_0:mlx5_1:mlx5_2:mlx5_3:mlx5_6:mlx5_7:mlx5_8:mlx5_9"
UCX_TLS=rc
#UCX_TLS=self,cma,rc,mm


export MONITOR_GPU=1
export TEST_SYSTEM_PARAMS=1
export TEST_LOOPS=1
export GPU_CLOCK_WARNING=$(echo ${GPU_CLOCK} | cut -f2 -d,)
export GPU_POWER_WARNING=400
export GPU_PCIE_GEN_WARNING=4
export GPU_PCIE_WIDTH_WARNING=16

## Depending on driver version, you may need to uncomment the following line
# export LD_LIBRARY_PATH="/usr/local/cuda/compat:$LD_LIBRARY_PATH

#DEBUG Parameters


#CPU_AFFINITY="32-47:48-63:0-15:16-31:96-111:112-127:64-79:80-95"
CPU_CORES_PER_RANK=8
#GPU_AFFINITY="0:1:2:3:4:5:6:7"
#MEM_AFFINITY="2:3:0:1:6:7:4:5"


## USE this for the 23.5 Container

export OMPI_MCA_pml=ucx
export OMPI_MCA_coll_hcoll_enable=0
export OMPI_MCA_btl=^openib,smcuda
export HPL_CUSOLVER_MP_TESTS=0
export HPL_TEST_SYSTEM=1
export NVSHMEM_ENABLE_NIC_PE_MAPPING=1

#Debug Variables

#export NVSHMEM_DEBUG=1
#export HPL_USE_NVSHMEM=0

# Use the following to determine if a rail is preventing HPL from running.  Specify the adapter card of the rail you want to test.  You can test mulitple rails
export NVSHMEM_HCA_LIST=mlx5_0:1,mlx5_1:1,mlx5_2:1,mlx5_3:1,mlx5_6:1,mlx5_8:1,mlx5_9:1

# #Depending on driver version, you may need to uncomment the following line
# export LD_LIBRARY_PATH="/usr/local/cuda/compat:$LD_LIBRARY_PATH



