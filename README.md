# awe-web-demo-project\n
\n
rpm -ivh http://yum.puppetlabs.com/puppetlabs-release-el-7.noarch.rpm\n
yum install -y puppet\n
cd /tmp\n
git clone https://github.com/kudipudi/awe-web-demo-project.git\n
puppet apply /tmp/awe-web-demo-project/puppet/manifests/web.pp\n
