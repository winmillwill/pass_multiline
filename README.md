# pass_multiline.sh

Lets you handle things like aws credentials with one invokation of `pass`, eg:

```
# contents of aws/accountname/credentials in password store
AWS_ACCESS_KEY_ID=(whatever)
AWS_SECRET_ACCESS_KEY=(something)

$ eval `pass_multiline.sh aws/accountname/credentials`
$ env | grep -i aws
AWS_ACCESS_KEY_ID=(whatever)
AWS_SECRET_ACCESS_KEY=(something)
$ aws s3api list-buckets
{
...
  (your buckets)
...
}
```
