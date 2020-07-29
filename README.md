<!--
*** Thanks for checking out this README Template. If you have a suggestion that would
*** make this better, please fork the ps-azure-bginfo and create a pull request or simply open
*** an issue with the tag "enhancement".
*** Thanks again! Now go create something AMAZING! :D
***
***
***
*** To avoid retyping too much info. Do a search and replace for the following:
*** adminph-de, ps-azure-bginfo, N00ky2010, patrick.hayo@flsmidth.com
-->





<!-- PROJECT SHIELDS -->
<!--
*** I'm using markdown "reference style" links for readability.
*** Reference links are enclosed in brackets [ ] instead of parentheses ( ).
*** See the bottom of this document for the declaration of the reference variables
*** for contributors-url, forks-url, etc. This is an optional, concise syntax you may use.
*** https://www.markdownguide.org/basic-syntax/#reference-style-links
-->
[![Contributors][contributors-shield]][contributors-url]
[![Forks][forks-shield]][forks-url]
[![Stargazers][stars-shield]][stars-url]
[![Issues][issues-shield]][issues-url]
[![MIT License][license-shield]][license-url]
[![LinkedIn][linkedin-shield]][linkedin-url]



<!-- PROJECT LOGO -->
<br />
<p align="center">
  <a href="https://github.com/adminph-de/ps-azure-bginfo">
    <img src="images/logo.png" alt="Logo" width="708" height="274">
  </a>

  <h3 align="center">Deploy BGinfo to a single IaaS virutal machine in Azure</h3>

  <p align="center">
    PowerShell script with a JSON variable file to install the BGinfo Extention
    to an Azure deployed virutal maschine.
    <br />
    <a href="https://github.com/adminph-de/ps-azure-bginfo"><strong>Explore the docs »</strong></a>
    <br />
    <br />
    <a href="https://github.com/adminph-de/ps-azure-bginfo">View Demo</a>
    ·
    <a href="https://github.com/adminph-de/ps-azure-bginfo/issues">ps-azure-bginfort Bug</a>
    ·
    <a href="https://github.com/adminph-de/ps-azure-bginfo/issues">Request Feature</a>
  </p>
</p>



<!-- TABLE OF CONTENTS -->
## Table of Contents

* [About the Project](#about-the-project)
  * [Built With](#built-with)
* [Getting Started](#getting-started)
  * [Prerequisites](#prerequisites)
  * [Installation](#installation)
* [Usage](#usage)
* [Roadmap](#roadmap)
* [Contributing](#contributing)
* [License](#license)
* [Contact](#contact)
* [Acknowledgements](#acknowledgements)



<!-- ABOUT THE PROJECT -->
## About The Project

[![Product Name Screen Shot][product-screenshot]](https://docs.microsoft.com/en-us/sysinternals/downloads/bginf)

BGinfo is a tool to show various information on your desktop wallpaper. The Screenshot above you shows the output of the included ```config.bgi```. We deploy this configuration file to all our virutal machines in Azure to set a company standard. The infomation helps us to be always aware of with which server you are currentely interacting. Especaly during trouble shooting sessions by managing various tasks between open RDP sessions, the information on the desktop helps us to doublechek your work.

Feel free to modify the ```config.bgi``` with you own settings and information and maybe share a desktop screenshot. There are so many different demands and requirement to put informantion on a desktop that I am courious to see what kind of different layouts and information people put into the ```config.bgi``` configuration.

Also sharing WMI, RegKeys, etc. or other kind of special information/integrations you get out of your system to show it on your desktop could be a benefit and interneting to see for all of us.


### Built With

* [BGInfo by Windows Sysinternals](https://docs.microsoft.com/en-us/sysinternals/downloads/bginfo)
* [PowerShell](https://docs.microsoft.com/en-us/powershell/)
* [Azuer PowerShell](https://docs.microsoft.com/en-us/powershell/azure/install-az-ps?view=azps-4.4.0)



<!-- GETTING STARTED -->
## Getting Started

To get a local copy up and running follow these simple steps.



### Prerequisites

You need a installed [PowerShell](https://docs.microsoft.com/en-us/powershell/) or, if you like to do it on Microsoft Visual Studio Code, you can try the Remote-Connection and let the code run in a isolated Docker container. Find the instruction of how to run here [Using Azure PowerShell in Docker](https://docs.microsoft.com/en-us/powershell/azure/azureps-in-docker?view=azps-4.4.0). This can be helpfull if you use a MacOS or Linux.

Running the script at the end, you need the Azure "AZ" module installed. Here the simple installation (it works the same way in the Docker container)
[InstallAzure Module "AZ"](https://docs.microsoft.com/en-us/powershell/azure/install-az-ps?view=azps-4.4.0)
```if ($PSVersionTable.PSEdition -eq 'Desktop' -and (Get-Module -Name AzureRM -ListAvailable)) {
    Write-Warning -Message ('Az module not installed. Having both the AzureRM and ' +
      'Az modules installed at the same time is not supported.')
} else {
    Install-Module -Name Az -AllowClobber -Scope CurrentUser
}
```

Now, you are ready to go!



### Installation
 
1. Clone the ps-azure-bginfo
```sh
git clone https://github.com/adminph-de/ps-azure-bginfo.git
```


<!-- USAGE EXAMPLES -->
## Usage

1. Modify the JSON file ```bginfo.json``` and put in your variable values with your favorit tool (as example Microsoft Visual Studio Code):
```[
    {
       "bginfo": {
           "location": "westeurope",
           "resourcegroup": "myRG",
           "vmname": "myVm"
     }
    }
]
````
* ```location``` = Azure Region (in this example: West Europe)
* ```resourcegroup``` = Resource Groupe where the virtual maschine is netsted in.
* ```vmname``` = Name of the virutal maschine in the Azure.

3. Execute the script with you preferd way of doing it (as an example, with Visual Studio Code):
* Don't forget to do a ```Login-AzAccount``` and a ```Select-AzSubscription``` if you have more than one Subscription, **before** you run the script.

![Product Name Screen Shot][product-screenshot-run]

4. Copy the ```config.bgi``` file 
Finaly you can copy the ```config.bgi``` configuration to the virutal machine or you keep the configuration as it is and stick to the Azure default or you customize your own config file. If you like to copy it, find the installed Azure Extention in ```C:\Packages\``` on the virutal maschine you did the installation.



<!-- ROADMAP -->
## Roadmap

See the [open issues](https://github.com/adminph-de/ps-azure-bginfo/issues) for a list of proposed features (and known issues).



<!-- CONTRIBUTING -->
## Contributing

Contributions are what make the open source community such an amazing place to be learn, inspire, and create. Any contributions you make are **greatly appreciated**.

1. [Fork](https://docs.github.com/en/enterprise/2.13/user/articles/fork-a-repo) the Project
2. Create your Feature Branch (`git checkout -b feature/AmazingFeature`)
3. Commit your Changes (`git commit -m 'Add some AmazingFeature'`)
4. Push to the Branch (`git push origin feature/AmazingFeature`)
5. Open a Pull Request



<!-- LICENSE -->
## License

Distributed under the MIT License. See `LICENSE` for more information.



<!-- CONTACT -->
## Contact

Patrick Hayo - [@N00ky2010](https://twitter.com/N00ky2010) - patrick.hayo@flsmidth.com

Project Link: [https://github.com/adminph-de/ps-azure-bginfo](https://github.com/adminph-de/ps-azure-bginfo)



<!-- ACKNOWLEDGEMENTS -->
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
[linkedin-shield]: https://img.shields.io/badge/patrickhayo-LinkedIn-black.svg?style=flat-square&logo=linkedin&colorB=555
[linkedin-url]: https://www.linkedin.com/in/patrickhayo/?locale=en_US
[product-screenshot]: images/screenshot.png
[product-screenshot-run]: images/screenshot_run.png
