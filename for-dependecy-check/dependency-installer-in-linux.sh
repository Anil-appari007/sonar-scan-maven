#!/bin/sh

## Need to run as root
echo $(whoami)

if [[ $(whoami) != "rooot" ]]; then
        echo "This script should be run as root only"
        exit 1
fi

##Check exist or not
dependency-check --version
status="$(echo $?)"

if [[ $status==0 ]]; then

    echo "Dependency-check not installed. Now installing the latest version."
fi
#wget https://github.com/jeremylong/DependencyCheck/releases/download/v7.1.0/dependency-check-7.1.0-release.zip


get_latest_release() {
  curl --silent "https://api.github.com/repos/$1/releases/latest" | # Get latest release from GitHub api
    grep '"tag_name":' |                                            # Get tag line
    sed -E 's/.*"([^"]+)".*/\1/'                                    # Pluck JSON value
}

get_latest_release "jeremylong/DependencyCheck"

latest="$(get_latest_release 'jeremylong/DependencyCheck')"
without_v="$(echo $latest | tr -d \"v\" )"

echo $latest this is the latest $without_v


wget https://github.com/jeremylong/DependencyCheck/releases/download/$latest/dependency-check-$without_v-release.zip

unzip dependency-check-$without_v-release.zip

ln -s ~/dependency-check/bin/dependency-check.sh /usr/local/bin/dependency-check

