# obj-c install

可以参考的网址：https://www.tutorialspoint.com/objective_c/objective_c_environment_setup.htm

## gcc obj-c install
```
sudo pacman -S gcc-objc
```
## gnu相关
```
sudo pacman -S gnustep-make
sudo pacman -S gnustep-base 
```

## 生成二进制程序，以helloWorld.m为例

```
gcc `gnustep-config --objc-flags` -lobjc -lgnustep-base helloWorld.m -o hello 
```
