# Chef Cookbook Workflow

The Chef Development Kit (ChefDK) brings the best-of-breed development tools built by the awesome Chef community to your workstation with just a few clicks. Download your package and start coding Chef in seconds.  This talk will demonstrate some of the tooling that's included and show you how to get started with a test-driven approach to writing infrastructure code.  Build confidence that your code will work in production BEFORE you actually run it there.

## Triangle DevOps

Big thanks to [Triangle DevOps](http://www.meetup.com/Triangle-DevOps) and [Bronto Software](http://bronto.com/) for hosting and [recording](https://www.youtube.com/watch?v=j-dpPB2S6y8) this meetup.  Join the meetup and come back for future meetings!

## Run the code yourself!

1. Install the [Chef Development Kit](downloads.chef.io/chef-dk/)
1. Install [VirtualBox](https://www.virtualbox.org/wiki/Downloads)
1. Install [Vagrant](https://www.vagrantup.com/downloads.html)
1. Clone this repo
1. From this directory run `kitchen verify` which will:
  * Create an Ubuntu and CentOS VM
  * Install and run Chef on both of those VMs
  * Run the Serverspec tests in both VMs
  * Leave the VMs around for you to inspect (`kitchen login centos` OR `ktichen login ubuntu`, if you'd like to poke around)
1. From this directory run `foodcritic .` to see the foodcritic errors (I fixed this from the live coding session.  Reach out to me if you want to know how).
1. `kitchen destroy` to clean-up the VMs.

### YouTube

This presentation was recorded.  You can [watch the recording on YouTube](https://www.youtube.com/watch?v=j-dpPB2S6y8).
