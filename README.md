# resume

Responsive Resume for Tyler Walters

See:  http://resume.tylerwalts.com

## Docs

### Running locally

#### macOS (rbenv — recommended)

Avoids RVM's GPG key issues. Uses rbenv via Homebrew:

1. `brew install rbenv ruby-build`
1. `rbenv init` and follow the printed instruction to add rbenv to your shell
1. Open a new terminal tab, then:
1. `rbenv install 3.2.0`
1. `rbenv local 3.2.0`
1. `gem install bundler`
1. `bundle install`
1. `bundle exec jekyll serve`
1. Open your browser to `localhost:4000`

Note: `rbenv local` writes a `.ruby-version` file to the project so the correct Ruby is selected automatically each time.

#### EC2:

* Install rvm & ruby 2.3: `rvm install 2.3`
* Install bundler: `gem install bundler`
* `rvm use 2.3`
* `bundle install`
* `bundle exec jekyll serve`
* Open your browser to `localhost:4000`

### Configuring with your own domain name

To setup your GH Pages site with a custom domain, [follow the instructions](https://help.github.com/articles/setting-up-a-custom-domain-with-github-pages/) on the GitHub Help site for that topic.

## License

Original Jekyll resume from:  https://github.com/jglovier/resume-template
The code and styles are licensed under the MIT license. [See project license.](LICENSE)
