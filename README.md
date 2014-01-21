# connectDocker
Run connect in docker.

## What's connect?
http://d.hatena.ne.jp/camelmasa/20140120/1390176365  

## Usage

### Edit run.sh
```
export HOST="example.com:3000"
export GMAIL_USERNAME="example@gmail.com"
export GMAIL_PASSWORD="example password"

bundle exec rails s
```

### Local Build
```
$ docker pull henteko/railsdocker
$ docker build -t example/connect .
```

### Run
```
$ docker run -d -p 3000:3000 example/connect
```

### Access
```
http://example.com:3000
```

