# Adding MacPorts
#prefix=/opt/local
#path=(${prefix}/sbin ${prefix}/bin ${prefix}/libexec $path .)

#manpath=(${prefix}/man $manpath)

# MATLAB bin
path=(/Applications/MATLAB_R2011a.app/bin $path)

# Qt bin
path=(/Users/kevingao/QtSDK/Desktop/Qt/474/gcc/bin $path)

# eclim bin
path=(/Applications/eclipse $path)

# Latex
path=(/usr/texbin $path)

# MySQL
path=(/usr/local/mysql/bin $path)
dyld_library_path=(/usr/local/mysql/lib $dyld_library_path)

# Postgres
path=(/Library/PostgreSQL/9.1/bin $path)

# Amazon EC2
export EC2_HOME=~/.ec2
path=($EC2_HOME/bin $path)
export EC2_PRIVATE_KEY=`ls $EC2_HOME/pk-D5U7BXQFMWBMXUEBT7CSTQZ77YQOP7EX.pem`
export EC2_CERT=`ls $EC2_HOME/cert-D5U7BXQFMWBMXUEBT7CSTQZ77YQOP7EX.pem`
export JAVA_HOME=/System/Library/Frameworks/JavaVM.framework/Home/
#alias ssh-aws="ssh -i ~/.ssh/kevingaopersonal.pem ec2-user@ec2-107-21-133-160.compute-1.amazonaws.com"
alias mount-aws="sshfs aws:/home/ec2-user/Sites /Volumes/aws"

# Duke
alias mount-duke="sshfs duke:/afs/acpub.duke.edu/users/k/a/kag45 /Volumes/duke"

# CINT
export CINTSYSDIR=/usr/bin/cint

# Latex
alias mylatex='latex $* && latex $* && latex $*'

# DoctorJS
export NODE_PATH=/usr/local/lib/jsctags/:$NODE_PATH

# DukeLunch
export MONGOLAB_URI=mongodb://heroku_app3223493:80qm771hj5f674fgbq10kvu4g5@ds031587.mongolab.com:31587/heroku_app3223493
export JUSTONEDB_DBI_URL=postgres://jg8g7u4dvtbasgho:ok3g8rbn1ie2pceyj6xr473r45oug2gm@77.92.68.105:10301/v9una7rwzvjxyvmd
export DATABASE_URL=${JUSTONEDB_DBI_URL}
alias mongo-dukelunch="mongo -u heroku_app3223493 -p 80qm771hj5f674fgbq10kvu4g5 ds031587.mongolab.com:31587/heroku_app3223493"

# RubyGems
path=(/Users/kevingao/.gem/ruby/1.8/bin $path)

# Homebrew
path=(/usr/local/bin /usr/local/sbin $path)
