# Swis-MediCare

Swis-Medicare is a platform that aims to help the doctors keep track of the patients histories.

## Users
The platform is used with patients and doctors who are able to login and access the following services;

1. Patients are able to view their medical histories. 
2. Patients are able to view their health data, such as blood pressure, weight.
3. Doctrs can view the patients histories and update.

## Set Up
This application is created using ruby version `2.7.4`.
To get started;
```console
$ git clone git@github.com:DMacharia/Swis-Medicare-backend.git

$ cd Swis-Medicare-backend

$ bundle install

$ rails db:create

$ rails db:migrate

$ rails db:seed

$ rails s
```
## Admin
Admin sign in params post'/login'
```console
{
    "email":"peter@example.com",
    "password":"@password",
}
```

## Patient
Patient sign in params post'/login'
```console
{
    "email":"bob@example.com",
    "password":"@password",
}
```

## Doctor
Doctor sign in params post'/login'
```console
{
    "email":"john@example.com",
    "password":"@password",
}
```


```

## Authors
Daniel Macharia

Ivy Sifuma

Salvato Luis

Faith Muchiri

Dennis Micheni


## Licence
MIT License

Copyright (c) 2022

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.