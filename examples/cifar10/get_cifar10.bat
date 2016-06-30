@echo off
echo Downloading...
"../../tools/wget" --no-check-certificate http://www.cs.toronto.edu/~kriz/cifar-10-binary.tar.gz
echo Unzipping...
"../../tools/7za" e cifar-10-binary.tar.gz && del cifar-10-binary.tar.gz
"../../tools/7za" x cifar-10-binary.tar && del cifar-10-binary.tar
echo Done!
pause