cd ../../

set EXAMPLE=examples/cifar10
set DATA=examples/cifar10/cifar-10-batches-bin
set BUILD=Build/x64/Release

REM set BACKEND=leveldb
set BACKEND=leveldb

echo "Creating %BACKEND%..."

rd /s /q "%EXAMPLE%/cifar10_train_%BACKEND%"
rd /s /q "%EXAMPLE%/cifar10_test_%BACKEND%"

"%BUILD%/convert_cifar_data.exe" %DATA% %EXAMPLE% %BACKEND%

echo "Computing image mean..."

"%BUILD%/compute_image_mean.exe" -backend=%BACKEND% %EXAMPLE%/cifar10_train_%BACKEND% %EXAMPLE%/mean.binaryproto

echo "Done."

pause