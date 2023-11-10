xhost local:root
docker create -t --name prometheus --runtime nvidia  -e NVIDIA_VISIBLE_DEVICES=all \
    --gpus all \
    -e DISPLAY=$DISPLAY \
    -e CYCLONEDDS_URI=$CYCLONEDDS_URI \
    -e XAUTHORITY=$XAUTHORITY \
    --network host \
    --ipc host \
    --privileged \
    --shm-size 8G \
    -v /dev:/dev \
    -v /tmp/.X11-unix:/tmp/.X11-unix \
    -v $XAUTHORITY:$XAUTHORITY \
    b3d9054e3242 bash
