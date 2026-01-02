
<img src="../Screenshot_20260101_173000_YouTube.jpg" />

# Amazon Elastic Block Store (Amazon EBS) provides block level storage volumes for use with EC2 instances.

# EBS volumes behave like raw, unformatted block devices. You can mount these volumes as devices on your instances.

# EBS volumes that are attached to an instance are exposed as storage volumes that persist independently from the life of the instance.

# You can create a file system on top of these volumes, or use them in any way you would use a block device (such as a hard drive).

<img src="../image-8.png" />

<img src="../image-9.png" />

# General Purpose SSD — Provides a balance of price and performance. We recommend these volumes for most workloads.

<img src="../image-10.png" />

<img src="../image-11.png" />

# Provisioned IOPS SSD — Provides high performance for mission-critical, low-latency, or high-throughput workloads.

<img src="../image-12.png" />

# Throughput Optimized HDD — A low-cost HDD designed for frequently accessed, throughput-intensive workloads.

# Cold HDD — The lowest-cost HDD design for less frequently accessed workloads.

<img src="../image-13.png" />

# An instance store provides temporary block-level storage for your instance. This storage is located on disks that are physically attached to the host computer.
# Instance store is ideal for temporary storage of information that changes frequently, such as buffers, caches, scratch data, and other temporary content, or for data that is replicated across a fleet of instances, such as a load-balanced pool of web servers.
# An instance store consists of one or more instance store volumes exposed as block devices. The size of an instance store as well as the number of devices available varies by instance type.
# The virtual devices for instance store volumes are ephemeral[0-23]. Instance types that support one instance store volume have ephemeral0.
# Instance types that support two instance store volumes have ephemeral0 and ephemeral1, and so on.

<img src="../image-14.png" />

<img src="../image-15.png" />

<img src="../image-16.png" />

<img src="../image-17.png" />

# Snapshots are incremental, the first being a full backup - and any future snapshots being incremental.

# Snapshots can be used to migrate data to different availability zones in a region, or to different regions of AWS.

<img src="../image-20.png" />

<img src="../image-21.png" />

<img src="../image-22.png" />

<img src="../image-23.png" />

<img src="../Screenshot_20260101_173028_YouTube.jpg" /> 

<img src="../Screenshot_20260101_173136_YouTube.jpg" /> 

<img src="../Screenshot_20260101_173218_YouTube.jpg" /> 

<img src="../Screenshot_20260101_173302_YouTube.jpg" /> 

<img src="../Screenshot_20260101_173414_YouTube.jpg" />
<center>
<img src="../image.png" style="max-width: 100% !important; height: auto !important;" />
</center>

<img src="../image-24.png" />

<img src="../image-25.png" />

<img src="../image-26.png" />

<img src="../image-18.png" />

<img src="../image-19.png" />

