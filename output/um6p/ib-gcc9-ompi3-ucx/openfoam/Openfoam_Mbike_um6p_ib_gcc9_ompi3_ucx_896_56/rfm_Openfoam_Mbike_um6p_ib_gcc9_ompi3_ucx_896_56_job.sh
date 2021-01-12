#!/bin/bash
#SBATCH --job-name="rfm_Openfoam_Mbike_um6p_ib_gcc9_ompi3_ucx_896_56_job"
#SBATCH --ntasks=896
#SBATCH --ntasks-per-node=56
#SBATCH --output=rfm_Openfoam_Mbike_um6p_ib_gcc9_ompi3_ucx_896_56_job.out
#SBATCH --error=rfm_Openfoam_Mbike_um6p_ib_gcc9_ompi3_ucx_896_56_job.err
#SBATCH --time=1:0:0
#SBATCH --exclusive
#SBATCH --exclude=cpu-h21a5-u1-svn2,cpu-h21a5-u1-svn4,cpu-h21a5-u2-svn1,cpu-h21a5-u2-svn3,cpu-h21a5-u3-svn2,cpu-h21a5-u3-svn4,cpu-h21a5-u4-svn1,cpu-h21a5-u4-svn3,cpu-h21a5-u5-svn2,cpu-h21a5-u5-svn4,cpu-h21a5-u6-svn1,cpu-h21a5-u6-svn3,cpu-h21a5-u7-svn2,cpu-h21a5-u7-svn4,cpu-h21a5-u8-svn1,cpu-h21a5-u8-svn3,cpu-h21a5-u9-svn2,cpu-h21a5-u9-svn4,cpu-h21a5-u10-svn1,cpu-h21a5-u10-svn3,cpu-h21a5-u11-svn2,cpu-h21a5-u11-svn4,cpu-h21a5-u12-svn1,cpu-h21a5-u12-svn3,cpu-h21a5-u13-svn2,cpu-h21a5-u13-svn4,cpu-h21a5-u14-svn1,cpu-h21a5-u14-svn3,cpu-h21a5-u23-svn2,cpu-h21a5-u23-svn4,cpu-h21a5-u24-svn1,cpu-h21a5-u24-svn3,cpu-h21a5-u25-svn2,cpu-h21a5-u25-svn4,cpu-h21a5-u26-svn1,cpu-h21a5-u26-svn3,cpu-h21a5-u27-svn2,cpu-h21a5-u27-svn4,cpu-h21a5-u28-svn1,cpu-h21a5-u28-svn3,cpu-h21a5-u29-svn2,cpu-h21a5-u29-svn4,cpu-h21a5-u30-svn1,cpu-h21a5-u30-svn3,cpu-h21a5-u31-svn2,cpu-h21a5-u31-svn4,cpu-h21a5-u32-svn1,cpu-h21a5-u32-svn3,cpu-h21a5-u33-svn2,cpu-h21a5-u33-svn4,cpu-h21a5-u34-svn1,cpu-h21a5-u34-svn3,cpu-h21a5-u35-svn2,cpu-h21a5-u35-svn4,cpu-h21a5-u36-svn1,cpu-h21a5-u36-svn3,cpu-h21a8-u1-svn2,cpu-h21a8-u1-svn4,cpu-h21a8-u2-svn1,cpu-h21a8-u2-svn3,cpu-h21a8-u3-svn2,cpu-h21a8-u3-svn4,cpu-h21a8-u4-svn1,cpu-h21a8-u4-svn3,cpu-h21a8-u5-svn2,cpu-h21a8-u5-svn4,cpu-h21a8-u6-svn1,cpu-h21a8-u6-svn3,cpu-h21a8-u7-svn2,cpu-h21a8-u7-svn4,cpu-h21a8-u8-svn1,cpu-h21a8-u8-svn3,cpu-h21a8-u9-svn2,cpu-h21a8-u9-svn4,cpu-h21a8-u10-svn1,cpu-h21a8-u10-svn3,cpu-h21a8-u11-svn2,cpu-h21a8-u11-svn4,cpu-h21a8-u12-svn1,cpu-h21a8-u12-svn3,cpu-h21a8-u13-svn2,cpu-h21a8-u13-svn4,cpu-h21a8-u14-svn1,cpu-h21a8-u14-svn3,cpu-h21a8-u23-svn2,cpu-h21a8-u23-svn4,cpu-h21a8-u24-svn1,cpu-h21a8-u24-svn3,cpu-h21a8-u25-svn2,cpu-h21a8-u25-svn4,cpu-h21a8-u26-svn1,cpu-h21a8-u26-svn3,cpu-h21a8-u27-svn2,cpu-h21a8-u27-svn4,cpu-h21a8-u28-svn1,cpu-h21a8-u28-svn3,cpu-h21a8-u29-svn2,cpu-h21a8-u29-svn4,cpu-h21a8-u30-svn1,cpu-h21a8-u30-svn3,cpu-h21a8-u31-svn2,cpu-h21a8-u31-svn4,cpu-h21a8-u32-svn1,cpu-h21a8-u32-svn3,cpu-h21a8-u33-svn2,cpu-h21a8-u33-svn4,cpu-h21a8-u34-svn1,cpu-h21a8-u34-svn3,cpu-h21a8-u35-svn2,cpu-h21a8-u35-svn4,cpu-h21a8-u36-svn1,cpu-h21a8-u36-svn3,cpu-h21b5-u1-svn2,cpu-h21b5-u1-svn4,cpu-h21b5-u2-svn1,cpu-h21b5-u2-svn3,cpu-h21b5-u3-svn2,cpu-h21b5-u3-svn4,cpu-h21b5-u4-svn1,cpu-h21b5-u4-svn3,cpu-h21b5-u5-svn2,cpu-h21b5-u5-svn4,cpu-h21b5-u6-svn1,cpu-h21b5-u6-svn3,cpu-h21b5-u7-svn2,cpu-h21b5-u7-svn4,cpu-h21b5-u8-svn1,cpu-h21b5-u8-svn3,cpu-h21b5-u9-svn2,cpu-h21b5-u9-svn4,cpu-h21b5-u10-svn1,cpu-h21b5-u10-svn3,cpu-h21b5-u11-svn2,cpu-h21b5-u11-svn4,cpu-h21b5-u12-svn1,cpu-h21b5-u12-svn3,cpu-h21b5-u13-svn2,cpu-h21b5-u13-svn4,cpu-h21b5-u14-svn1,cpu-h21b5-u14-svn3,cpu-h21b5-u23-svn2,cpu-h21b5-u23-svn4,cpu-h21b5-u24-svn1,cpu-h21b5-u24-svn3,cpu-h21b5-u25-svn2,cpu-h21b5-u25-svn4,cpu-h21b5-u26-svn1,cpu-h21b5-u26-svn3,cpu-h21b5-u27-svn2,cpu-h21b5-u27-svn4,cpu-h21b5-u28-svn1,cpu-h21b5-u28-svn3,cpu-h21b5-u29-svn2,cpu-h21b5-u29-svn4,cpu-h21b5-u30-svn1,cpu-h21b5-u30-svn3,cpu-h21b5-u31-svn2,cpu-h21b5-u31-svn4,cpu-h21b5-u32-svn1,cpu-h21b5-u32-svn3,cpu-h21b5-u33-svn2,cpu-h21b5-u33-svn4,cpu-h21b5-u34-svn1,cpu-h21b5-u34-svn3,cpu-h21b5-u35-svn2,cpu-h21b5-u35-svn4,cpu-h21b5-u36-svn1,cpu-h21b5-u36-svn3,cpu-h21c5-u1-svn2,cpu-h21c5-u1-svn4,cpu-h21c5-u2-svn1,cpu-h21c5-u2-svn3,cpu-h21c5-u3-svn2,cpu-h21c5-u3-svn4,cpu-h21c5-u4-svn1,cpu-h21c5-u4-svn3,cpu-h21c5-u5-svn2,cpu-h21c5-u5-svn4,cpu-h21c5-u6-svn1,cpu-h21c5-u6-svn3,cpu-h21c5-u7-svn2,cpu-h21c5-u7-svn4,cpu-h21c5-u8-svn1,cpu-h21c5-u8-svn3,cpu-h21c5-u9-svn2,cpu-h21c5-u9-svn4,cpu-h21c5-u10-svn1,cpu-h21c5-u10-svn3,cpu-h21c5-u11-svn2,cpu-h21c5-u11-svn4,cpu-h21c5-u12-svn1,cpu-h21c5-u12-svn3,cpu-h21c5-u13-svn2,cpu-h21c5-u13-svn4,cpu-h21c5-u14-svn1,cpu-h21c5-u14-svn3,cpu-h21c5-u23-svn2,cpu-h21c5-u23-svn4,cpu-h21c5-u24-svn1,cpu-h21c5-u24-svn3,cpu-h21c5-u25-svn2,cpu-h21c5-u25-svn4,cpu-h21c5-u26-svn1,cpu-h21c5-u26-svn3,cpu-h21c5-u27-svn2,cpu-h21c5-u27-svn4,cpu-h21c5-u28-svn1,cpu-h21c5-u28-svn3,cpu-h21c5-u29-svn2,cpu-h21c5-u29-svn4,cpu-h21c5-u30-svn1,cpu-h21c5-u30-svn3,cpu-h21c5-u31-svn2,cpu-h21c5-u31-svn4,cpu-h21c5-u32-svn1,cpu-h21c5-u32-svn3,cpu-h21c5-u33-svn2,cpu-h21c5-u33-svn4,cpu-h21c5-u34-svn1,cpu-h21c5-u34-svn3,cpu-h21c5-u35-svn2,cpu-h21c5-u35-svn4,cpu-h21c5-u36-svn1,cpu-h21c5-u36-svn3,cpu-h21c8-u1-svn2,cpu-h21c8-u1-svn4,cpu-h21c8-u2-svn1,cpu-h21c8-u2-svn3,cpu-h21c8-u3-svn2,cpu-h21c8-u3-svn4,cpu-h21c8-u4-svn1,cpu-h21c8-u4-svn3,cpu-h21c8-u5-svn2,cpu-h21c8-u5-svn4,cpu-h21c8-u6-svn1,cpu-h21c8-u6-svn3,cpu-h21c8-u7-svn2,cpu-h21c8-u7-svn4,cpu-h21c8-u8-svn1,cpu-h21c8-u8-svn3,cpu-h21c8-u9-svn2,cpu-h21c8-u9-svn4,cpu-h21c8-u10-svn1,cpu-h21c8-u10-svn3,cpu-h21c8-u11-svn2,cpu-h21c8-u11-svn4,cpu-h21c8-u12-svn1,cpu-h21c8-u12-svn3,cpu-h21c8-u13-svn2,cpu-h21c8-u13-svn4,cpu-h21c8-u14-svn1,cpu-h21c8-u14-svn3,cpu-h21c8-u23-svn2,cpu-h21c8-u23-svn4,cpu-h21c8-u24-svn1,cpu-h21c8-u24-svn3,cpu-h21c8-u25-svn2,cpu-h21c8-u25-svn4,cpu-h21c8-u26-svn1,cpu-h21c8-u26-svn3,cpu-h21c8-u27-svn2,cpu-h21c8-u27-svn4,cpu-h21c8-u28-svn1,cpu-h21c8-u28-svn3,cpu-h21c8-u29-svn2,cpu-h21c8-u29-svn4,cpu-h21c8-u30-svn1,cpu-h21c8-u30-svn3,cpu-h21c8-u31-svn2,cpu-h21c8-u31-svn4,cpu-h21c8-u32-svn1,cpu-h21c8-u32-svn3,cpu-h21c8-u33-svn2,cpu-h21c8-u33-svn4,cpu-h21c8-u34-svn1,cpu-h21c8-u34-svn3,cpu-h21c8-u35-svn2,cpu-h21c8-u35-svn4,cpu-h21c8-u36-svn1,cpu-h21c8-u36-svn3,cpu-h21d5-u1-svn2,cpu-h21d5-u1-svn4,cpu-h21d5-u2-svn1,cpu-h21d5-u2-svn3,cpu-h21d5-u3-svn2,cpu-h21d5-u3-svn4,cpu-h21d5-u4-svn1,cpu-h21d5-u4-svn3,cpu-h21d5-u5-svn2,cpu-h21d5-u5-svn4,cpu-h21d5-u6-svn1,cpu-h21d5-u6-svn3,cpu-h21d5-u7-svn2,cpu-h21d5-u7-svn4,cpu-h21d5-u8-svn1,cpu-h21d5-u8-svn3,cpu-h21d5-u9-svn2,cpu-h21d5-u9-svn4,cpu-h21d5-u10-svn1,cpu-h21d5-u10-svn3,cpu-h21d5-u11-svn2,cpu-h21d5-u11-svn4,cpu-h21d5-u12-svn1,cpu-h21d5-u12-svn3,cpu-h21d5-u13-svn2,cpu-h21d5-u13-svn4,cpu-h21d5-u14-svn1,cpu-h21d5-u14-svn3,cpu-h21d5-u23-svn2,cpu-h21d5-u23-svn4,cpu-h21d5-u24-svn1,cpu-h21d5-u24-svn3,cpu-h21d5-u25-svn2,cpu-h21d5-u25-svn4,cpu-h21d5-u26-svn1,cpu-h21d5-u26-svn3,cpu-h21d5-u27-svn2,cpu-h21d5-u27-svn4,cpu-h21d5-u28-svn1,cpu-h21d5-u28-svn3,cpu-h21d5-u29-svn2,cpu-h21d5-u29-svn4,cpu-h21d5-u30-svn1,cpu-h21d5-u30-svn3,cpu-h21d5-u31-svn2,cpu-h21d5-u31-svn4,cpu-h21d5-u32-svn1,cpu-h21d5-u32-svn3,cpu-h21d5-u33-svn2,cpu-h21d5-u33-svn4,cpu-h21d5-u34-svn1,cpu-h21d5-u34-svn3,cpu-h21d5-u35-svn2,cpu-h21d5-u35-svn4,cpu-h21d5-u36-svn1,cpu-h21d5-u36-svn3,cpu-h22a5-u26-sv,cpu-h22a5-u27-sv,cpu-h22a5-u28-sv,cpu-h22a5-u29-sv,cpu-h22a5-u34-sv,cpu-h22a5-u35-sv,cpu-h22a5-u37-sv,cpu-h22a5-u39-sv,cpu-h22a5-u41-sv,cpu-h22a8-u1-sv,cpu-h22a8-u3-sv,cpu-h22a8-u5-sv,cpu-h22a8-u7-sv,cpu-h22a8-u9-sv,cpu-h22a8-u11-svn2,cpu-h22a8-u11-svn4,cpu-h22a8-u12-svn1,cpu-h22a8-u12-svn3,cpu-h22a8-u13-svn2,cpu-h22a8-u13-svn4,cpu-h22a8-u14-svn1,cpu-h22a8-u14-svn3,cpu-h22a8-u15-svn2,cpu-h22a8-u15-svn4,cpu-h22a8-u16-svn1,cpu-h22a8-u16-svn3,cpu-h22a8-u17-sv,cpu-h22a8-u18-sv,cpu-h22a8-u20-sv,cpu-h22a8-u26-sv,cpu-h22a8-u28-sv,cpu-h22a8-u30-sv,cpu-h22b5-u1-svn2,cpu-h22b5-u1-svn4,cpu-h22b5-u2-svn1,cpu-h22b5-u2-svn3,cpu-h22b5-u3-svn2,cpu-h22b5-u3-svn4,cpu-h22b5-u4-svn1,cpu-h22b5-u4-svn3,cpu-h22b5-u5-svn2,cpu-h22b5-u5-svn4,cpu-h22b5-u6-svn1,cpu-h22b5-u6-svn3,cpu-h22b5-u7-svn2,cpu-h22b5-u7-svn4,cpu-h22b5-u8-svn1,cpu-h22b5-u8-svn3,cpu-h22b5-u9-svn2,cpu-h22b5-u9-svn4,cpu-h22b5-u10-svn1,cpu-h22b5-u10-svn3,cpu-h22b5-u11-svn2,cpu-h22b5-u11-svn4,cpu-h22b5-u12-svn1,cpu-h22b5-u12-svn3,cpu-h22b5-u13-svn2,cpu-h22b5-u13-svn4,cpu-h22b5-u14-svn1,cpu-h22b5-u14-svn3,cpu-h22b5-u23-svn2,cpu-h22b5-u23-svn4,cpu-h22b5-u24-svn1,cpu-h22b5-u24-svn3,cpu-h22b5-u25-svn2,cpu-h22b5-u25-svn4,cpu-h22b5-u26-svn1,cpu-h22b5-u26-svn3,cpu-h22b5-u27-svn2,cpu-h22b5-u27-svn4,cpu-h22b5-u28-svn1,cpu-h22b5-u28-svn3,cpu-h22b5-u29-svn2,cpu-h22b5-u29-svn4,cpu-h22b5-u30-svn1,cpu-h22b5-u30-svn3,cpu-h22b5-u31-svn2,cpu-h22b5-u31-svn4,cpu-h22b5-u32-svn1,cpu-h22b5-u32-svn3,cpu-h22b5-u33-svn2,cpu-h22b5-u33-svn4,cpu-h22b5-u34-svn1,cpu-h22b5-u34-svn3,cpu-h22b5-u35-svn2,cpu-h22b5-u35-svn4,cpu-h22b5-u36-svn1,cpu-h22b5-u36-svn3,cpu-h22b8-u1-svn2,cpu-h22b8-u1-svn4,cpu-h22b8-u2-svn1,cpu-h22b8-u2-svn3,cpu-h22b8-u3-svn2,cpu-h22b8-u3-svn4,cpu-h22b8-u4-svn1,cpu-h22b8-u4-svn3,cpu-h22b8-u5-svn2,cpu-h22b8-u5-svn4,cpu-h22b8-u6-svn1,cpu-h22b8-u6-svn3,cpu-h22b8-u7-svn2,cpu-h22b8-u7-svn4,cpu-h22b8-u8-svn1,cpu-h22b8-u8-svn3,cpu-h22b8-u9-svn2,cpu-h22b8-u9-svn4,cpu-h22b8-u10-svn1,cpu-h22b8-u10-svn3,cpu-h22b8-u11-svn2,cpu-h22b8-u11-svn4,cpu-h22b8-u12-svn1,cpu-h22b8-u12-svn3,cpu-h22b8-u13-svn2,cpu-h22b8-u13-svn4,cpu-h22b8-u14-svn1,cpu-h22b8-u14-svn3,cpu-h22b8-u23-svn2,cpu-h22b8-u23-svn4,cpu-h22b8-u24-svn1,cpu-h22b8-u24-svn3,cpu-h22b8-u25-svn2,cpu-h22b8-u25-svn4,cpu-h22b8-u26-svn1,cpu-h22b8-u26-svn3,cpu-h22b8-u27-svn2,cpu-h22b8-u27-svn4,cpu-h22b8-u28-svn1,cpu-h22b8-u28-svn3,cpu-h22b8-u29-svn2,cpu-h22b8-u29-svn4,cpu-h22b8-u30-svn1,cpu-h22b8-u30-svn3,cpu-h22b8-u31-svn2,cpu-h22b8-u31-svn4,cpu-h22b8-u32-svn1,cpu-h22b8-u32-svn3,cpu-h22b8-u33-svn2,cpu-h22b8-u33-svn4,cpu-h22b8-u34-svn1,cpu-h22b8-u34-svn3,cpu-h22b8-u35-svn2,cpu-h22b8-u35-svn4,cpu-h22b8-u36-svn1,cpu-h22b8-u36-svn3,cpu-h22c5-u1-svn2,cpu-h22c5-u1-svn4,cpu-h22c5-u2-svn1,cpu-h22c5-u2-svn3,cpu-h22c5-u3-svn2,cpu-h22c5-u3-svn4,cpu-h22c5-u4-svn1,cpu-h22c5-u4-svn3,cpu-h22c5-u5-svn2,cpu-h22c5-u5-svn4,cpu-h22c5-u6-svn1,cpu-h22c5-u6-svn3,cpu-h22c5-u7-svn2,cpu-h22c5-u7-svn4,cpu-h22c5-u8-svn1,cpu-h22c5-u8-svn3,cpu-h22c5-u9-svn2,cpu-h22c5-u9-svn4,cpu-h22c5-u10-svn1,cpu-h22c5-u10-svn3,cpu-h22c5-u11-svn2,cpu-h22c5-u11-svn4,cpu-h22c5-u12-svn1,cpu-h22c5-u12-svn3,cpu-h22c5-u13-svn2,cpu-h22c5-u13-svn4,cpu-h22c5-u14-svn1,cpu-h22c5-u14-svn3,cpu-h22c5-u23-svn2,cpu-h22c5-u23-svn4,cpu-h22c5-u24-svn1,cpu-h22c5-u24-svn3,cpu-h22c5-u25-svn2,cpu-h22c5-u25-svn4,cpu-h22c5-u26-svn1,cpu-h22c5-u26-svn3,cpu-h22c5-u27-svn2,cpu-h22c5-u27-svn4,cpu-h22c5-u28-svn1,cpu-h22c5-u28-svn3,cpu-h22c5-u29-svn2,cpu-h22c5-u29-svn4,cpu-h22c5-u30-svn1,cpu-h22c5-u30-svn3,cpu-h22c5-u31-svn2,cpu-h22c5-u31-svn4,cpu-h22c5-u32-svn1,cpu-h22c5-u32-svn3,cpu-h22c5-u33-svn2,cpu-h22c5-u33-svn4,cpu-h22c5-u34-svn1,cpu-h22c5-u34-svn3,cpu-h22c5-u35-svn2,cpu-h22c5-u35-svn4,cpu-h22c5-u36-svn1,cpu-h22c5-u36-svn3,cpu-h22d5-u1-svn2,cpu-h22d5-u1-svn4,cpu-h22d5-u2-svn1,cpu-h22d5-u2-svn3,cpu-h22d5-u3-svn2,cpu-h22d5-u3-svn4,cpu-h22d5-u4-svn1,cpu-h22d5-u4-svn3,cpu-h22d5-u5-svn2,cpu-h22d5-u5-svn4,cpu-h22d5-u6-svn1,cpu-h22d5-u6-svn3,cpu-h22d5-u7-svn2,cpu-h22d5-u7-svn4,cpu-h22d5-u8-svn1,cpu-h22d5-u8-svn3,cpu-h22d5-u9-svn2,cpu-h22d5-u9-svn4,cpu-h22d5-u10-svn1,cpu-h22d5-u10-svn3,cpu-h22d5-u11-svn2,cpu-h22d5-u11-svn4,cpu-h22d5-u12-svn1,cpu-h22d5-u12-svn3,cpu-h22d5-u13-svn2,cpu-h22d5-u13-svn4,cpu-h22d5-u14-svn1,cpu-h22d5-u14-svn3,cpu-h22d5-u23-svn2,cpu-h22d5-u23-svn4,cpu-h22d5-u24-svn1,cpu-h22d5-u24-svn3,cpu-h22d5-u25-svn2,cpu-h22d5-u25-svn4,cpu-h22d5-u26-svn1,cpu-h22d5-u26-svn3,cpu-h22d5-u27-svn2,cpu-h22d5-u27-svn4,cpu-h22d5-u28-svn1,cpu-h22d5-u28-svn3,cpu-h22d5-u29-svn2,cpu-h22d5-u29-svn4,cpu-h22d5-u30-svn1,cpu-h22d5-u30-svn3,cpu-h22d5-u31-svn2,cpu-h22d5-u31-svn4,cpu-h22d5-u32-svn1,cpu-h22d5-u32-svn3,cpu-h22d5-u33-svn2,cpu-h22d5-u33-svn4,cpu-h22d5-u34-svn1,cpu-h22d5-u34-svn3,cpu-h22d5-u35-svn2,cpu-h22d5-u35-svn4,cpu-h22d5-u36-svn1,cpu-h22d5-u36-svn3,cpu-h22d5-u37-sv,cpu-h22d8-u1-svn2,cpu-h22d8-u1-svn4,cpu-h22d8-u2-svn1,cpu-h22d8-u2-svn3,cpu-h22d8-u3-svn2,cpu-h22d8-u3-svn4,cpu-h22d8-u4-svn1,cpu-h22d8-u4-svn3,cpu-h22d8-u5-svn2,cpu-h22d8-u5-svn4,cpu-h22d8-u6-svn1,cpu-h22d8-u6-svn3,cpu-h22d8-u7-svn2,cpu-h22d8-u7-svn4,cpu-h22d8-u8-svn1,cpu-h22d8-u8-svn3,cpu-h22d8-u9-svn2,cpu-h22d8-u9-svn4,cpu-h22d8-u10-svn1,cpu-h22d8-u10-svn3,cpu-h22d8-u11-svn2,cpu-h22d8-u11-svn4,cpu-h22d8-u12-svn1,cpu-h22d8-u12-svn3,cpu-h22d8-u13-svn2,cpu-h22d8-u13-svn4,cpu-h22d8-u14-svn1,cpu-h22d8-u14-svn3,cpu-h22d8-u23-svn2,cpu-h22d8-u23-svn4,cpu-h22d8-u24-svn1,cpu-h22d8-u24-svn3,cpu-h22d8-u25-svn2,cpu-h22d8-u25-svn4,cpu-h22d8-u26-svn1,cpu-h22d8-u26-svn3,cpu-h22d8-u27-svn2,cpu-h22d8-u27-svn4,cpu-h22d8-u28-svn1,cpu-h22d8-u28-svn3,cpu-h22d8-u29-svn2,cpu-h22d8-u29-svn4,cpu-h22d8-u30-svn1,cpu-h22d8-u30-svn3,cpu-h22d8-u31-svn2,cpu-h22d8-u31-svn4,cpu-h22d8-u32-svn1,cpu-h22d8-u32-svn3,cpu-h22d8-u33-svn2,cpu-h22d8-u33-svn4,cpu-h22d8-u34-svn1,cpu-h22d8-u34-svn3,cpu-h22d8-u35-svn2,cpu-h22d8-u35-svn4,cpu-h22d8-u36-svn1,cpu-h22d8-u36-svn3,cpu-h22d8-u37-sv,cpu-h23a5-u1-svn2,cpu-h23a5-u1-svn4,cpu-h23a5-u2-svn1,cpu-h23a5-u2-svn3,cpu-h23a5-u3-svn2,cpu-h23a5-u3-svn4,cpu-h23a5-u4-svn1,cpu-h23a5-u4-svn3,cpu-h23a5-u5-svn2,cpu-h23a5-u5-svn4,cpu-h23a5-u6-svn1,cpu-h23a5-u6-svn3,cpu-h23a5-u7-svn2,cpu-h23a5-u7-svn4,cpu-h23a5-u8-svn1,cpu-h23a5-u8-svn3,cpu-h23a5-u9-svn2,cpu-h23a5-u9-svn4,cpu-h23a5-u10-svn1,cpu-h23a5-u10-svn3,cpu-h23a5-u11-svn2,cpu-h23a5-u11-svn4,cpu-h23a5-u12-svn1,cpu-h23a5-u12-svn3,cpu-h23a5-u13-svn2,cpu-h23a5-u13-svn4,cpu-h23a5-u14-svn1,cpu-h23a5-u14-svn3,cpu-h23a5-u23-svn2,cpu-h23a5-u23-svn4,cpu-h23a5-u24-svn1,cpu-h23a5-u24-svn3,cpu-h23a5-u25-svn2,cpu-h23a5-u25-svn4,cpu-h23a5-u26-svn3,cpu-h23a5-u27-svn2,cpu-h23a5-u27-svn4,cpu-h23a5-u28-svn1,cpu-h23a5-u28-svn3,cpu-h23a5-u29-svn2,cpu-h23a5-u29-svn4,cpu-h23a5-u30-svn1,cpu-h23a5-u30-svn3,cpu-h23a5-u31-svn2,cpu-h23a5-u31-svn4,cpu-h23a5-u32-svn1,cpu-h23a5-u32-svn3,cpu-h23a5-u33-svn2,cpu-h23a5-u33-svn4,cpu-h23a5-u34-svn1,cpu-h23a5-u34-svn3,cpu-h23a5-u35-svn2,cpu-h23a5-u35-svn4,cpu-h23a5-u36-svn1,cpu-h23a5-u36-svn3,cpu-h23a8-u1-svn2,cpu-h23a8-u1-svn4,cpu-h23a8-u2-svn1,cpu-h23a8-u2-svn3,cpu-h23a8-u3-svn2,cpu-h23a8-u3-svn4,cpu-h23a8-u4-svn1,cpu-h23a8-u4-svn3,cpu-h23a8-u5-svn2,cpu-h23a8-u5-svn4,cpu-h23a8-u6-svn1,cpu-h23a8-u6-svn3,cpu-h23a8-u7-svn2,cpu-h23a8-u7-svn4,cpu-h23a8-u8-svn1,cpu-h23a8-u8-svn3,cpu-h23a8-u9-svn2,cpu-h23a8-u9-svn4,cpu-h23a8-u10-svn1,cpu-h23a8-u10-svn3,cpu-h23a8-u11-svn2,cpu-h23a8-u11-svn4,cpu-h23a8-u12-svn1,cpu-h23a8-u12-svn3,cpu-h23a8-u13-svn2,cpu-h23a8-u13-svn4,cpu-h23a8-u14-svn1,cpu-h23a8-u14-svn3,cpu-h23a8-u23-svn2,cpu-h23a8-u24-svn1,cpu-h23a8-u24-svn3,cpu-h23a8-u25-svn2,cpu-h23a8-u25-svn4,cpu-h23a8-u26-svn1,cpu-h23a8-u26-svn3,cpu-h23a8-u27-svn2,cpu-h23a8-u27-svn4,cpu-h23a8-u28-svn1,cpu-h23a8-u28-svn3,cpu-h23a8-u29-svn2,cpu-h23a8-u29-svn4,cpu-h23a8-u30-svn1,cpu-h23a8-u30-svn3,cpu-h23a8-u31-svn2,cpu-h23a8-u31-svn4,cpu-h23a8-u32-svn1,cpu-h23a8-u32-svn3,cpu-h23a8-u33-svn2,cpu-h23a8-u33-svn4,cpu-h23a8-u34-svn1,cpu-h23a8-u34-svn3,cpu-h23a8-u35-svn2,cpu-h23a8-u35-svn4,cpu-h23a8-u36-svn1,cpu-h23a8-u36-svn3,cpu-h23c5-u1-svn2,cpu-h23c5-u1-svn4,cpu-h23c5-u2-svn1,cpu-h23c5-u2-svn3,cpu-h23c5-u3-svn2,cpu-h23c5-u3-svn4,cpu-h23c5-u4-svn1,cpu-h23c5-u4-svn3,cpu-h23c5-u5-svn2,cpu-h23c5-u5-svn4,cpu-h23c5-u6-svn1,cpu-h23c5-u6-svn3,cpu-h23c5-u7-svn2,cpu-h23c5-u7-svn4,cpu-h23c5-u8-svn1,cpu-h23c5-u8-svn3,cpu-h23c5-u9-svn2,cpu-h23c5-u9-svn4,cpu-h23c5-u10-svn1,cpu-h23c5-u10-svn3,cpu-h23c5-u11-svn2,cpu-h23c5-u11-svn4,cpu-h23c5-u12-svn1,cpu-h23c5-u12-svn3,cpu-h23c5-u13-svn2,cpu-h23c5-u13-svn4,cpu-h23c5-u14-svn1,cpu-h23c5-u14-svn3,cpu-h23c5-u23-svn2,cpu-h23c5-u23-svn4,cpu-h23c5-u24-svn1,cpu-h23c5-u24-svn3,cpu-h23c5-u25-svn2,cpu-h23c5-u25-svn4,cpu-h23c5-u26-svn1,cpu-h23c5-u26-svn3,cpu-h23c5-u27-svn2,cpu-h23c5-u27-svn4,cpu-h23c5-u28-svn1,cpu-h23c5-u28-svn3,cpu-h23c5-u29-svn2,cpu-h23c5-u29-svn4,cpu-h23c5-u30-svn1,cpu-h23c5-u30-svn3,cpu-h23c5-u31-svn2,cpu-h23c5-u31-svn4,cpu-h23c5-u32-svn1,cpu-h23c5-u32-svn3,cpu-h23c5-u33-svn2,cpu-h23c5-u33-svn4,cpu-h23c5-u34-svn1,cpu-h23c5-u34-svn3,cpu-h23c5-u35-svn2,cpu-h23c5-u35-svn4,cpu-h23c5-u36-svn1,cpu-h23c5-u36-svn3,cpu-h23c8-u1-svn2,cpu-h23c8-u1-svn4,cpu-h23c8-u2-svn1,cpu-h23c8-u2-svn3,cpu-h23c8-u3-svn2,cpu-h23c8-u3-svn4,cpu-h23c8-u4-svn1,cpu-h23c8-u4-svn3,cpu-h23c8-u5-svn2,cpu-h23c8-u5-svn4,cpu-h23c8-u6-svn1,cpu-h23c8-u6-svn3,cpu-h23c8-u7-svn2,cpu-h23c8-u7-svn4,cpu-h23c8-u8-svn1,cpu-h23c8-u8-svn3,cpu-h23c8-u9-svn2,cpu-h23c8-u9-svn4,cpu-h23c8-u10-svn1,cpu-h23c8-u10-svn3,cpu-h23c8-u11-svn2,cpu-h23c8-u11-svn4,cpu-h23c8-u12-svn1,cpu-h23c8-u12-svn3,cpu-h23c8-u13-svn2,cpu-h23c8-u13-svn4,cpu-h23c8-u14-svn1,cpu-h23c8-u14-svn3,cpu-h23c8-u23-svn2,cpu-h23c8-u23-svn4,cpu-h23c8-u24-svn1,cpu-h23c8-u24-svn3,cpu-h23c8-u25-svn2,cpu-h23c8-u25-svn4,cpu-h23c8-u26-svn1,cpu-h23c8-u26-svn3,cpu-h23c8-u27-svn2,cpu-h23c8-u27-svn4,cpu-h23c8-u28-svn1,cpu-h23c8-u28-svn3,cpu-h23c8-u29-svn2,cpu-h23c8-u29-svn4,cpu-h23c8-u30-svn1,cpu-h23c8-u30-svn3,cpu-h23c8-u31-svn2,cpu-h23c8-u31-svn4,cpu-h23c8-u32-svn1,cpu-h23c8-u32-svn3,cpu-h23c8-u33-svn2,cpu-h23c8-u33-svn4,cpu-h23c8-u34-svn1,cpu-h23c8-u34-svn3,cpu-h23c8-u35-svn2,cpu-h23c8-u35-svn4,cpu-h23c8-u36-svn1,cpu-h23c8-u36-svn3,cpu-h23d5-u26-sv,cpu-h23d5-u27-sv,cpu-h23d5-u28-sv,cpu-h23d5-u29-sv,cpu-h23d5-u32-sv,cpu-h23d5-u34-sv,cpu-h23d5-u36-sv,cpu-h23d5-u37-svn2,cpu-h23d5-u37-svn4,cpu-h23d5-u38-svn1,cpu-h23d5-u38-svn3,cpu-h24a5-u1-svn2,cpu-h24a5-u1-svn4,cpu-h24a5-u2-svn1,cpu-h24a5-u2-svn3,cpu-h24a5-u3-svn2,cpu-h24a5-u3-svn4,cpu-h24a5-u4-svn1,cpu-h24a5-u4-svn3,cpu-h24a5-u5-svn2,cpu-h24a5-u5-svn4,cpu-h24a5-u6-svn1,cpu-h24a5-u6-svn3,cpu-h24a5-u7-svn2,cpu-h24a5-u7-svn4,cpu-h24a5-u8-svn1,cpu-h24a5-u8-svn3,cpu-h24a5-u9-svn2,cpu-h24a5-u9-svn4,cpu-h24a5-u10-svn1,cpu-h24a5-u10-svn3,cpu-h24a5-u11-svn2,cpu-h24a5-u11-svn4,cpu-h24a5-u12-svn1,cpu-h24a5-u12-svn3,cpu-h24a5-u13-svn2,cpu-h24a5-u13-svn4,cpu-h24a5-u14-svn1,cpu-h24a5-u14-svn3,cpu-h24a5-u23-svn2,cpu-h24a5-u23-svn4,cpu-h24a5-u24-svn1,cpu-h24a5-u24-svn3,cpu-h24a5-u25-svn2,cpu-h24a5-u25-svn4,cpu-h24a5-u26-svn1,cpu-h24a5-u26-svn3,cpu-h24a5-u27-svn2,cpu-h24a5-u27-svn4,cpu-h24a5-u28-svn1,cpu-h24a5-u28-svn3,cpu-h24a5-u29-svn2,cpu-h24a5-u29-svn4,cpu-h24a5-u30-svn1,cpu-h24a5-u30-svn3,cpu-h24a5-u31-svn2,cpu-h24a5-u31-svn4,cpu-h24a5-u32-svn1,cpu-h24a5-u32-svn3,cpu-h24a5-u33-svn2,cpu-h24a5-u33-svn4,cpu-h24a5-u34-svn1,cpu-h24a5-u34-svn3,cpu-h24a5-u35-svn2,cpu-h24a5-u35-svn4,cpu-h24a5-u36-svn1,cpu-h24a5-u36-svn3,cpu-h24b5-u1-svn2,cpu-h24b5-u1-svn4,cpu-h24b5-u2-svn1,cpu-h24b5-u2-svn3,cpu-h24b5-u3-svn2,cpu-h24b5-u3-svn4,cpu-h24b5-u4-svn1,cpu-h24b5-u4-svn3,cpu-h24b5-u5-svn2,cpu-h24b5-u5-svn4,cpu-h24b5-u6-svn1,cpu-h24b5-u6-svn3,cpu-h24b5-u7-svn2,cpu-h24b5-u7-svn4,cpu-h24b5-u8-svn1,cpu-h24b5-u8-svn3,cpu-h24b5-u9-svn2,cpu-h24b5-u9-svn4,cpu-h24b5-u10-svn1,cpu-h24b5-u10-svn3,cpu-h24b5-u11-svn2,cpu-h24b5-u11-svn4,cpu-h24b5-u12-svn1,cpu-h24b5-u12-svn3,cpu-h24b5-u13-svn2,cpu-h24b5-u13-svn4,cpu-h24b5-u14-svn1,cpu-h24b5-u14-svn3,cpu-h24b5-u23-svn2,cpu-h24b5-u23-svn4,cpu-h24b5-u24-svn1,cpu-h24b5-u24-svn3,cpu-h24b5-u25-svn2,cpu-h24b5-u25-svn4,cpu-h24b5-u26-svn1,cpu-h24b5-u26-svn3,cpu-h24b5-u27-svn2,cpu-h24b5-u27-svn4,cpu-h24b5-u28-svn1,cpu-h24b5-u28-svn3,cpu-h24b5-u29-svn2,cpu-h24b5-u29-svn4,cpu-h24b5-u30-svn1,cpu-h24b5-u30-svn3,cpu-h24b5-u31-svn2,cpu-h24b5-u31-svn4,cpu-h24b5-u32-svn1,cpu-h24b5-u32-svn3,cpu-h24b5-u33-svn2,cpu-h24b5-u33-svn4,cpu-h24b5-u34-svn1,cpu-h24b5-u34-svn3,cpu-h24b5-u35-svn2,cpu-h24b5-u35-svn4,cpu-h24b5-u36-svn1,cpu-h24b5-u36-svn3,cpu-h24b8-u1-svn2,cpu-h24b8-u1-svn4,cpu-h24b8-u2-svn1,cpu-h24b8-u2-svn3,cpu-h24b8-u3-svn2,cpu-h24b8-u3-svn4,cpu-h24b8-u4-svn1,cpu-h24b8-u4-svn3,cpu-h24b8-u5-svn2,cpu-h24b8-u5-svn4,cpu-h24b8-u6-svn1,cpu-h24b8-u6-svn3,cpu-h24b8-u7-svn2,cpu-h24b8-u7-svn4,cpu-h24b8-u8-svn1,cpu-h24b8-u8-svn3,cpu-h24b8-u9-svn2,cpu-h24b8-u9-svn4,cpu-h24b8-u10-svn1,cpu-h24b8-u10-svn3,cpu-h24b8-u11-svn2,cpu-h24b8-u11-svn4,cpu-h24b8-u12-svn1,cpu-h24b8-u12-svn3,cpu-h24b8-u13-svn2,cpu-h24b8-u13-svn4,cpu-h24b8-u14-svn1,cpu-h24b8-u14-svn3,cpu-h24b8-u23-svn2,cpu-h24b8-u23-svn4,cpu-h24b8-u24-svn1,cpu-h24b8-u24-svn3,cpu-h24b8-u25-svn2,cpu-h24b8-u25-svn4,cpu-h24b8-u26-svn1,cpu-h24b8-u26-svn3,cpu-h24b8-u27-svn2,cpu-h24b8-u27-svn4,cpu-h24b8-u28-svn1,cpu-h24b8-u28-svn3,cpu-h24b8-u29-svn2,cpu-h24b8-u29-svn4,cpu-h24b8-u30-svn1,cpu-h24b8-u30-svn3,cpu-h24b8-u31-svn2,cpu-h24b8-u31-svn4,cpu-h24b8-u32-svn1,cpu-h24b8-u32-svn3,cpu-h24b8-u33-svn2,cpu-h24b8-u33-svn4,cpu-h24b8-u34-svn1,cpu-h24b8-u34-svn3,cpu-h24b8-u35-svn2,cpu-h24b8-u35-svn4,cpu-h24b8-u36-svn1,cpu-h24b8-u36-svn3,cpu-h24c5-u1-svn2,cpu-h24c5-u1-svn4,cpu-h24c5-u2-svn1,cpu-h24c5-u2-svn3,cpu-h24c5-u3-svn2,cpu-h24c5-u3-svn4,cpu-h24c5-u4-svn1,cpu-h24c5-u4-svn3,cpu-h24c5-u5-svn2,cpu-h24c5-u5-svn4,cpu-h24c5-u6-svn1,cpu-h24c5-u6-svn3,cpu-h24c5-u7-svn2,cpu-h24c5-u7-svn4,cpu-h24c5-u8-svn1,cpu-h24c5-u8-svn3,cpu-h24c5-u9-svn2,cpu-h24c5-u9-svn4,cpu-h24c5-u10-svn1,cpu-h24c5-u10-svn3,cpu-h24c5-u11-svn2,cpu-h24c5-u11-svn4,cpu-h24c5-u12-svn1,cpu-h24c5-u12-svn3,cpu-h24c5-u13-svn2,cpu-h24c5-u13-svn4,cpu-h24c5-u14-svn1,cpu-h24c5-u14-svn3,cpu-h24c5-u23-svn2,cpu-h24c5-u23-svn4,cpu-h24c5-u24-svn1,cpu-h24c5-u24-svn3,cpu-h24c5-u25-svn2,cpu-h24c5-u25-svn4,cpu-h24c5-u26-svn1,cpu-h24c5-u26-svn3,cpu-h24c5-u27-svn2,cpu-h24c5-u27-svn4,cpu-h24c5-u28-svn1,cpu-h24c5-u28-svn3,cpu-h24c5-u29-svn2,cpu-h24c5-u29-svn4,cpu-h24c5-u30-svn1,cpu-h24c5-u30-svn3,cpu-h24c5-u31-svn2,cpu-h24c5-u31-svn4,cpu-h24c5-u32-svn1,cpu-h24c5-u32-svn3,cpu-h24c5-u33-svn2,cpu-h24c5-u33-svn4,cpu-h24c5-u34-svn1,cpu-h24c5-u34-svn3,cpu-h24c5-u35-svn2,cpu-h24c5-u35-svn4,cpu-h24c5-u36-svn1,cpu-h24c5-u36-svn3,cpu-h24d5-u1-svn2,cpu-h24d5-u1-svn4,cpu-h24d5-u2-svn1,cpu-h24d5-u2-svn3,cpu-h24d5-u3-svn2,cpu-h24d5-u3-svn4,cpu-h24d5-u4-svn1,cpu-h24d5-u4-svn3,cpu-h24d5-u5-svn2,cpu-h24d5-u5-svn4,cpu-h24d5-u6-svn1,cpu-h24d5-u6-svn3,cpu-h24d5-u7-svn2,cpu-h24d5-u7-svn4,cpu-h24d5-u8-svn1,cpu-h24d5-u8-svn3,cpu-h24d5-u9-svn2,cpu-h24d5-u9-svn4,cpu-h24d5-u10-svn1,cpu-h24d5-u10-svn3,cpu-h24d5-u11-svn2,cpu-h24d5-u11-svn4,cpu-h24d5-u12-svn1,cpu-h24d5-u12-svn3,cpu-h24d5-u13-svn2,cpu-h24d5-u13-svn4,cpu-h24d5-u14-svn1,cpu-h24d5-u14-svn3,cpu-h24d5-u23-svn2,cpu-h24d5-u23-svn4,cpu-h24d5-u24-svn1,cpu-h24d5-u24-svn3,cpu-h24d5-u25-svn2,cpu-h24d5-u25-svn4,cpu-h24d5-u26-svn1,cpu-h24d5-u26-svn3,cpu-h24d5-u27-svn2,cpu-h24d5-u27-svn4,cpu-h24d5-u28-svn1,cpu-h24d5-u28-svn3,cpu-h24d5-u29-svn2,cpu-h24d5-u29-svn4,cpu-h24d5-u30-svn1,cpu-h24d5-u30-svn3,cpu-h24d5-u31-svn2,cpu-h24d5-u31-svn4,cpu-h24d5-u32-svn1,cpu-h24d5-u32-svn3,cpu-h24d5-u33-svn2,cpu-h24d5-u33-svn4,cpu-h24d5-u34-svn1,cpu-h24d5-u34-svn3,cpu-h24d5-u35-svn2,cpu-h24d5-u35-svn4,cpu-h24d5-u36-svn1,cpu-h24d5-u36-svn3,cpu-h24d8-u1-svn2,cpu-h24d8-u1-svn4,cpu-h24d8-u2-svn1,cpu-h24d8-u2-svn3,cpu-h24d8-u3-svn2,cpu-h24d8-u3-svn4,cpu-h24d8-u4-svn1,cpu-h24d8-u4-svn3,cpu-h24d8-u5-svn2,cpu-h24d8-u5-svn4,cpu-h24d8-u6-svn1,cpu-h24d8-u6-svn3,cpu-h24d8-u7-svn2,cpu-h24d8-u7-svn4,cpu-h24d8-u8-svn1,cpu-h24d8-u8-svn3,cpu-h24d8-u9-svn2,cpu-h24d8-u9-svn4,cpu-h24d8-u10-svn1,cpu-h24d8-u10-svn3,cpu-h24d8-u11-svn2,cpu-h24d8-u11-svn4,cpu-h24d8-u12-svn1,cpu-h24d8-u12-svn3,cpu-h24d8-u13-svn2,cpu-h24d8-u13-svn4,cpu-h24d8-u14-svn1,cpu-h24d8-u14-svn3,cpu-h24d8-u23-svn2,cpu-h24d8-u23-svn4,cpu-h24d8-u24-svn1,cpu-h24d8-u24-svn3,cpu-h24d8-u25-svn2,cpu-h24d8-u25-svn4,cpu-h24d8-u26-svn1,cpu-h24d8-u26-svn3,cpu-h24d8-u27-svn2,cpu-h24d8-u27-svn4,cpu-h24d8-u28-svn1,cpu-h24d8-u28-svn3,cpu-h24d8-u29-svn2,cpu-h24d8-u29-svn4,cpu-h24d8-u30-svn1,cpu-h24d8-u30-svn3,cpu-h24d8-u31-svn2,cpu-h24d8-u31-svn4,cpu-h24d8-u32-svn1,cpu-h24d8-u32-svn3,cpu-h24d8-u33-svn2,cpu-h24d8-u33-svn4,cpu-h24d8-u34-svn1,cpu-h24d8-u34-svn3,cpu-h24d8-u35-svn2,cpu-h24d8-u35-svn4,cpu-h24d8-u36-svn1,cpu-h24d8-u36-svn3
module load gcc/9.1.0-wq42xr6
module load openmpi/3.1.6-kwhmkxm
export SLURM_MPI_TYPE=pmix_v3
export UCX_NET_DEVICES=mlx5_0:1
module load openfoam-org-7-gcc-9.1.0-zryeyvl
tar --strip-components 2 -xf Motorbike_bench_template.tar.gz bench_template/basecase
./Allclean
sed -i -- "s/method .*/method          scotch;/g" system/decomposeParDict
sed -i -- "s/numberOfSubdomains .*/numberOfSubdomains 896;/g" system/decomposeParDict
sed -i -- 's/    #include "streamLines"//g' system/controlDict
sed -i -- 's/    #include "wallBoundedStreamLines"//g' system/controlDict
sed -i -- 's|caseDicts|caseDicts/mesh/generation|' system/meshQualityDict
./Allmesh
time \
srun simpleFoam -parallel
