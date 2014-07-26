##DESCRIPTION

Secros enables you to manage your secret values in one place.

##USAGE

###Make secrets

####STEP 1. Install secros

```bash
gem install secros
```

####STEP 2. Generate template

```bash
secros your-generate-path
```

####STEP 3. Add secrets to secrets.yml

```yml
values:
  aws_secret_key: aws_secret_key_value
files:
  ssh_identity: id_rsa
```

###Access secrets

####STEP 1. Add secros to Gemfile

```rb
gem 'secros'
```

also `gem install secros` and `require 'secros'` works.

####STEP 2. Access secrets via key

```rb
Secros.new(your_generate_path).values[:aws_secret_key] # == 'aws_secret_key_value'
Secros.new(your_generate_path).files[:ssh_identity]) # == "#{your_generate_path}/files/id_rsa"
```
