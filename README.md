# awe-web-demo-project

rpm -ivh http://yum.puppetlabs.com/puppetlabs-release-el-7.noarch.rpm
yum install -y puppet
cd /tmp
git clone https://github.com/kudipudi/awe-web-demo-project.git
puppet apply /tmp/awe-web-demo-project/puppet/manifests/web.pp
