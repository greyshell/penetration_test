rem Description: Windows enumeration WMIC scrip
rem Author: greyshell(OS-12940)


wmic qfe get Caption,Description,HotFixID,InstalledOn /format:htable  > my_wmic_report.html

wmic useraccount list /format:htable >>my_wmic_report.html
wmic group list full /format:hform >>my_wmic_report.html
wmic share list /format:hform >>my_wmic_report.html

wmic netlogin list full /format:htable >>my_wmic_report.html
wmic LOGON list full /format:htable >>my_wmic_report.html
wmic netuse list full /format:htable  >> my_wmic_report.html

wmic process get CSName,Description,ExecutablePath,ProcessId /format:htable >> my_wmic_report.html
wmic service get Caption,Name,PathName,ServiceType,Started,StartMode,StartName /format:htable >> my_wmic_report.html

wmic os get name,version,InstallDate,LastBootUpTime,LocalDateTime,Manufacturer,RegisteredUser,ServicePackMajorVersion,SystemDirectory /format:htable >> my_wmic_report.html
wmic startup get Caption,Command,Location,User /format:htable  >> my_wmic_report.html
wmic ENVIRONMENT LIST full /format:htable >>my_wmic_report.html
wmic JOB LIST full /format:htable >>my_wmic_report.html
wmic PRODUCT get Description,InstallDate,InstallLocation,PackageCache,Vendor,Version /format:htable  >> my_wmic_report.html

wmic ENVIRONMENT list full /format:htable >>my_wmic_report.html
wmic BOOTCONFIG list full /format:htable >>my_wmic_report.html
wmic PARTITION list full /format:htable >>my_wmic_report.html
wmic DISKDRIVE list full /format:htable >>my_wmic_report.html

wmic COMPUTERSYSTEM list full /format:htable >>my_wmic_report.html
wmic volume get Label,DeviceID,DriveLetter,FileSystem,Capacity,FreeSpace /format:htable  >> my_wmic_report.html
wmic cpu list full /format:htable >>my_wmic_report.html
wmic BIOS list full /format:htable >>my_wmic_report.html
wmic MEMORYCHIP list full /format:htable >>my_wmic_report.html
wmic BASEBOARD list full /format:htable >>my_wmic_report.html
wmic nicconfig where IPEnabled='true' get Caption,DefaultIPGateway,Description,DHCPEnabled,DHCPServer,IPAddress,IPSubnet,MACAddress /format:htable >> my_wmic_report.html

wmic printer list full /format:htable >>my_wmic_report.html
wmic printjob list full /format:htable >>my_wmic_report.html
wmic printerconfig list full /format:htable >>my_wmic_report.html

wmic Timezone get DaylightName,Description,StandardName /format:htable >> my_wmic_report.html

wmic SOFTWAREFEATURE list full /format:htable >>my_wmic_report.html
