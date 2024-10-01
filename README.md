## First Installation

### Requirements

- Clone the repository
- Install ruby and set your local ruby version to `3.3.0`

### Installation

Initialize the project:

```bash
bundle exec rake project:initialize
```

Install Gems dependencies:

```bash
bundle install
```

Initialize the database:

```bash
rails db:create db:migrate db:seed
```

## Setup

### Requirements

- Install ruby and set your local ruby version to `3.3.0`

### Installation

You can install the project by running the following commands:

Install Gems dependencies:

```bash
bundle install
```

Initialize the database:

```bash
rails db:create db:migrate db:seed
```

### Environment variables

Create a `.env` file in the root of the project and add the [following variables]("")

### Running the project

You can run the project by running the following command:

```bash
bin/dev
```

You can run sidekiq server by running the following command:

```bash
bundle exec sidekiq
```

### Running the tests

You can run the tests by running the following command:

```bash
bundle exec rspec
```

### Running the linters

You can run the linters by running the following command:

```bash
# Ruby linter
bundle exec rubocop

# HTML linter
bundle exec htmlbeautifier **/*.html.erb -b 1
```

### Running the security checks

You can run the security checks by running the following command:

```bash
# Ruby security check
bundle exec brakeman

# Gems security check
bundle exec bundler-audit
```
