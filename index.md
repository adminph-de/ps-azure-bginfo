---
layout: default
---

<!--
*** To avoid retyping too much info. Do a search and replace for the following:
*** adminph-de, ps-azure-bginfo, N00ky2010, patrick.hayo@flsmidth.com
-->

[![Contributors][contributors-shield]][contributors-url]
[![Forks][forks-shield]][forks-url]
[![Stargazers][stars-shield]][stars-url]
[![Issues][issues-shield]][issues-url]
[![MIT License][license-shield]][license-url]
[![LinkedIn][linkedin-shield]][linkedin-url]


<p align="left">
  <a href="https://github.com/adminph-de/ps-powerbi-asr-report">
    <img src="{{site.baseurl}}/assets/images/logo.png" alt="Code Snipes" width="60%" height="60%">
  </a>
</p>


## Table of Contents

* [About the Project](#about-the-project)
* [Prerequisites](#prerequisites)
* [Installation](#installation)
* [Usage](#usage)
* [Contributing](#contributing)
* [License](#license)
* [Contact](#contact)
* [Acknowledgements](#acknowledgements)


## About The Project

BGinfo is a tool to show various information on your desktop wallpaper. The Screenshot above you shows the output of the included config.bgi. We deploy this configuration file to all our virtual machines in Azure to set a company standard. The information helps us to be always aware of which server you are currently interacting. Especially during troubleshooting sessions, the information on the desktop helps us double-check our work by managing various tasks between open RDP sessions.

Feel free to modify the ```config.bgi``` with your settings and information and maybe share a desktop screenshot. There are so many different demands and requirements to put information on a desktop that I am curious to see what kind of different layouts and information people put into the ```config.bgi``` configuration.

Also, sharing WMI, RegKeys, etc. or other kinds of individual information/integrations, you get out of your system to show it on your desktop could be beneficial and exciting to see for all of us.


### Prerequisites

On a macOS or Linux OS, you need an installed [PowerShell](https://docs.microsoft.com/en-us/powershell/) or, if you like to do it on Microsoft Visual Studio Code, you can try the Remote-Connection and let the code run in an isolated Docker container. Find the instruction of how to run here [Using Azure PowerShell in Docker](https://docs.microsoft.com/en-us/powershell/azure/azureps-in-docker?view=azps-4.4.0). It can be helpful if you use a macOS or Linux.

Running the script in the end, you need the Azure "AZ" module installed. Here the simple installation (it works the same way in the Docker container)
[InstallAzure Module "AZ"](https://docs.microsoft.com/en-us/powershell/azure/install-az-ps?view=azps-4.4.0)
```powershell
if ($PSVersionTable.PSEdition -eq 'Desktop' -and (Get-Module -Name AzureRM -ListAvailable)) {
    Write-Warning -Message ('Az module not installed. Having both the AzureRM and ' +
      'Az modules installed at the same time is not supported.')
} else {
    Install-Module -Name Az -AllowClobber -Scope CurrentUser
}
```

### Installation
 
Clone my Git Reposetory ``ps-azure-bginfo``
```sh
git clone https://github.com/adminph-de/ps-azure-bginfo.git
```

## Usage

#### Modify the JSON file ``bginfo.json`` wich contains the deloyment settings

| VARIABLE      | DESCRIPTION                                                   | 
|:--------------|:--------------------------------------------------------------|
| **location**      | Azuer Region or the virtual maschine                          |
|:--------------|:--------------------------------------------------------------|
| **resourcegroup** | Azure Resource Groupe where the virtual maschine is nested in |
|:--------------|:--------------------------------------------------------------|
| **vmname**        | Name of the virutal maschine in the Azure Portal              |
|:--------------|:--------------------------------------------------------------|

```json
[
    {
       "bginfo": {
           "location": "westeurope",
           "resourcegroup": "myRG",
           "vmname": "myVm"
     }
    }
]
````

#### Execute the PowerShell script:
```bash
ps-azure-bginfo.ps1
```

![Product Name Screen Shot][product-screenshot-1]

#### Copy the ``config.bgi`` file 
Finally you can copy my ``config.bgi`` configuration to the virutal machine, or you keep the setup as it is and stick to the Azure default configuration file. I recomment to customize your own config file. If you like to copy it, the installation folder of the Azure Extention is in ``C:\Packages\[Extention-Name]`` on the virtual machine you did the installation.


## Contributing

Contributions are what make the open source community such an amazing place to be learn, inspire, and create. Any contributions you make are **greatly appreciated**.

1. [Fork](https://docs.github.com/en/enterprise/2.13/user/articles/fork-a-repo) the Project
2. Create your Feature Branch `git checkout -b feature/AmazingFeature`
3. Commit your Changes `git commit -m 'Add some AmazingFeature'`
4. Push to the Branch `git push origin feature/AmazingFeature`
5. Open a Pull Request


## License

Distributed under the [MIT](https://choosealicense.com/licenses/mit/) License. See `LICENSE` for more information.


## Contact

Patrick Hayo - [@N00ky2010](https://twitter.com/N00ky2010) - patrick.hayo@flsmidth.com

Project Link: [https://github.com/adminph-de/ps-azure-bginfo](https://github.com/adminph-de/ps-azure-bginfo)


## Acknowledgements

* [Janaina Laguardia Areal Hyldvang, Ph.D.](https://www.linkedin.com/in/janainahyldvang/)
* [Jakob Daugaard](https://www.linkedin.com/in/jakobdaugaard/?locale=en_US)
* [Senthil Kumar Bose](https://www.linkedin.com/in/senthil-kumar-bose-6900582/)
* [Javed Khan](https://www.linkedin.com/in/javed-khan-674863164/)


<!-- MARKDOWN LINKS & IMAGES -->
<!-- https://www.markdownguide.org/basic-syntax/#reference-style-links -->
[contributors-shield]: https://img.shields.io/github/contributors/adminph-de/ps-azure-bginfo.svg?style=flat-square
[contributors-url]: https://github.com/adminph-de/ps-azure-bginfo/graphs/contributors
[forks-shield]: https://img.shields.io/github/forks/adminph-de/ps-azure-bginfo.svg?style=flat-square
[forks-url]: https://github.com/adminph-de/ps-azure-bginfo/network/members
[stars-shield]: https://img.shields.io/github/stars/adminph-de/ps-azure-bginfo.svg?style=flat-square
[stars-url]: https://github.com/adminph-de/ps-azure-bginfo/stargazers
[issues-shield]: https://img.shields.io/github/issues/adminph-de/ps-azure-bginfo.svg?style=flat-square
[issues-url]: https://github.com/adminph-de/ps-azure-bginfo/issues
[license-shield]: https://img.shields.io/github/license/adminph-de/ps-azure-bginfo.svg?style=flat-square
[license-url]: https://github.com/adminph-de/ps-azure-bginfo/blob/master/LICENSE.txt
[linkedin-shield]: https://img.shields.io/badge/-LinkedIn-black.svg?style=flat-square&logo=linkedin&colorB=555
[linkedin-url]: https://www.linkedin.com/in/patrickhayo/?locale=en_US
[product-screenshot-1]: {{site.baseurl}}/assets/images/screenshot1.png
