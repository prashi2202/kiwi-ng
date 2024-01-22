build-centos8-template-bios:
	http_proxy=http://web-proxy.in.hpecorp.net:8080 kiwi-ng --debug --profile=bios system build --description centos/x86_64/centos8/ --target-dir output/centos8-template-bios

build-centos8-template-uefi:
	http_proxy=http://web-proxy.in.hpecorp.net:8080 kiwi-ng --debug --profile=uefi system build --description centos/x86_64/centos8/ --target-dir output/centos8-template-uefi

virtual:
	http_proxy=http://web-proxy.in.hpecorp.net:8080 kiwi-ng --debug --profile=Virtual system build --description centos/x86_64/centos8/ --target-dir output/centos8-base-vm

Disk:
	http_proxy=http://web-proxy.in.hpecorp.net:8080 kiwi-ng --debug --profile=Disk system build --description centos/x86_64/centos8/ --target-dir output/disk

make clean:
	sudo rm -rf output/*
