## Angular Firebase CLI Docker Image

Node.js 8.11.3 LTS
Angular CLI 6.0.8
Firebase CLI 3.18.6

# Create a new project in current directory
docker run -it --rm -v $(pwd):/opt/app osvaldotulini/ng-firebase ng new my-app --directory="opt/app"

# Setup Firebase project
docker run -it --rm -v $(pwd):/opt/app osvaldotulini/ng-firebase  sh -c 'firebase init'

# Run app
docker run -it --rm -w /opt/app -v $(pwd):/opt/app -p 4200:4200 osvaldotulini/ng-firebase sh -c 'ng serve --host 0.0.0.0'

# Add new angular component
docker run -it --rm -w /opt/app -v $(pwd):/opt/app -p 4200:4200 osvaldotulini/ng-firebase sh -c 'ng g c new-component'

## Links

Angular CLI https://github.com/angular/angular-cli

Node.js https://nodejs.org/en/

Firebase CLI https://github.com/firebase/firebase-tools

