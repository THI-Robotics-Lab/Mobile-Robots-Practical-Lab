#!/bin/bash

set -e  # stop on error

echo "🔧 ROS2 workspace auto-build check..."

# Source ROS 2
source /opt/ros/humble/setup.bash

BASE_DIR="/home/Mobile-Robots-Practical-Lab"

build_ws_if_needed() {
    WS_NAME=$1
    WS_PATH="$BASE_DIR/$WS_NAME"

    if [ ! -d "$WS_PATH/src" ]; then
        echo "⚠️  $WS_NAME has no src/ folder. Skipping."
        return
    fi

    if [ -d "$WS_PATH/install" ]; then
        echo "✅ $WS_NAME already built. Skipping build."
    else
        echo "🛠️  Building $WS_NAME ..."
        cd "$WS_PATH"
        colcon build --symlink-install
        echo "✅ $WS_NAME build finished."
    fi
}

build_ws_if_needed "my_ws"
build_ws_if_needed "turtlebot3_ws"

echo "🚀 ROS2 workspace auto-build done."
