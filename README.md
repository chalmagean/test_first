## Install

This project uses [RVM](https://rvm.io/) and it assumes you have it installed. If you do, it should create a separate gemset for you.

Clone the repository, and install the gems.

```
git clone https://github.com/chalmagean/test_first.git
cd test_first
gem install bundler -v 1.16.2
bundle install
bundle exec cucumber
bundle exec rspec
```

If you're using RBENV, you can install ruby 2.5.3 with the following command:

```
rbenv install 2.5.3
```
