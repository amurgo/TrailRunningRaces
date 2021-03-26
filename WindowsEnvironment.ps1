## Run in shell before opening VS Code
param ([Parameter(Mandatory=$true)]$EnvironmentName)
##Conda
#Virtual environment 

Write-Host "Checking environment $EnvironmentName"
try
{
    conda activate $EnvironmentName
}
catch
{
    Write-Host "Missing $EnvironmentName environment. Creating..."
    conda env list              #list environments
    conda create --name $EnvironmentName
    conda activate $EnvironmentName
    Write-Host "Environment $EnvironmentName created."

    # Libraries needed
    conda install selenium -y
    conda install beautifulsoup4 -y
    conda install lxml -y
    conda install pip -y #Install pip on environment https://stackoverflow.com/questions/41060382/using-pip-to-install-packages-to-anaconda-environment
    conda install -c -y conda-forge geckodriver
    conda install pandas -y
    conda install tqdm -y
    conda install ipykernel -y

    ## Pip
    # Edit pip.ini to add the trusted host for repo. To know where to install execute 
    #pip config -v list #check where pip.ini needs to be located

    #On each location copy the following content on pip.ini
    #[global]
    #trusted-host = pypi.python.org pypi.org files.pythonhosted.org repo.anaconda.com

    Write-Host "pip installs"
    $exe = "C:\Anaconda\envs\$($EnvironmentName)\Scripts\pip"
    &$exe install html5lib
    &$exe install html5lib
    &$exe install whois
    &$exe install builtwith
}
finally
{
    conda env list              #list environments
    
    #Disable SSL checks for conda
    conda config --set ssl_verify false

    Write-Host "Ensure Firefox.exe and geckodriver.exe are on the Path environment variable " -ForegroundColor Yellow
    
    #Launch IDE
    code
}

