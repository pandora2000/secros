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
secros your_generate_path
```

####STEP 2. Add secrets to secrets.yml

```yml
values:
  key: value
files:
  file: file_name
```

###Access secrets

####STEP 1. Add secros to Gemfile

```rb
gem 'secros'
```

also `gem install secros` and `require 'secros'` works.

###STEP 2. Access secrets via key

```rb
Secros.new(your_generate_path).values(:key) # == 'value'
Secros.new(your_generate_path).files(:file) # == "#{your_generate_path}/files/file_name}"
```
