This project demonstrates a minimal build with support for [mender](https://mender.io/) Over-the-air Software updates on NVIDIA Tegra.

See layer at [meta-mender-tegra](https://github.com/Trellis-Logic/meta-mender-tegra) for details and meta-mender-tegra customization instructions.

The project is tested on the Jetson TX2 development board.

# Using
After cloning the project, run
```
git submodule init
git submodule update
```

Then run
```
./build.sh
```
To build the project.

Set the device into recovery mode by power cycling the device, then holdng down reset and recovery buttons, release reset, then release recovery.

Then use
```
./deploy.sh
```
To deploy to NVIDIA TX2 hardware, connected via USB and in recovery mode.
