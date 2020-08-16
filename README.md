# Freedom
###  An online platform where anyone can come to share his opinions about anything .
> This project was built as my capstone for the ROR curriculum of the Microverse software development school. It is a fullstack project built using the rails framework. Basically a user can sign up on the platform, and give opinions and like others opinions. Users can also follow and unfollow other users.


## Live Preview
## [Freedom](https://ancient-refuge-09655.herokuapp.com/)

## Built With

- Ruby 2.7 and Rails 6.0.3
- Bootstrap 4
- Deployed on Heroku

To get a local copy up and running follow these steps:

### Prerequisites

- Ruby: 2.7
- Rails: 6.0.3
- SQLite
- Git

### Usage

- Fork/Clone this project to your local machine and checkout to required branch:

```Bash
    git clone git@github.com:MFahadUmer/freedom.git
    cd freedom
```

```Ruby
    bundle install
```

Setup database with:

```Ruby
    yarn install --check-files
    rails db:create
    rails db:migrate
```

Start server with:

```Ruby
    rails server
```
### Running tests

```Ruby
    bundle exec rspec --format documentation
```
(Note that to run the test, you will need to have chrome browser installed on your computer)

### Deployment
The project was depolyed to heroku. If you set up AWS S3 for active storage and want to deploy your own copy to heroku, then you will need to allow heroku access the encrypted API keys by running

```Ruby
    heroku config:set RAILS_MASTER_KEY= <master.key>
```

(The master key can be found in the `/config/master.key` file)

## Authors

👤 **Muhammad Fahad Umer**

- Github: [@MFahadUmer](https://github.com/MFahadUmer)
- Twitter: [@engfahadumer](https://twitter.com/engfahadumer)
- Linkedin: [linkedin](https://www.linkedin.com/in/engineer-muhammad-fahad-e-umer-08813055/)

## 🤝 Contributing

Contributions, issues and feature requests are welcome!

Feel free to check the [issues page](https://github.com/MFahadUmer/freedom/issues)

Start by:

- Forking the project
- Cloning the project to your local machine
- `cd` into the project directory
- Run `git checkout -b your-branch-name.`
- Make your contributions
- Push your branch up to your forked repository
- Open a Pull Request with a detailed description of the development(or master if not available) branch of the original project for a review

## Show your support

Give a ⭐️ if you like this project!

## Acknowledgments

- [Microverse](https://www.microverse.org)
- [Gregoire Vella](https://www.behance.net/gregoirevella) for the design.

## 📝 License

This project is [MIT](LICENSE) licensed with the exception of the design, which is under the [Creative Commons License](https://creativecommons.org/licenses/by-nc-nd/4.0/) and attributed to [Gregoire Vella](https://www.behance.net/gregoirevella).
