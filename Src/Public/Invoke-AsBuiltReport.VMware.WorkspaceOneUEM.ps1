function Invoke-AsBuiltReport.VMware.WorkspaceOneUEM {
    <#
    .SYNOPSIS
        PowerShell script to document the configuration of VMware WorkspaceOneUEM in Word/HTML/Text formats
    .DESCRIPTION
        Documents the configuration of VMware WorkspaceOneUEM in Word/HTML/Text formats using PScribo.
    .NOTES
        Version:        0.1.0
        Author:         Chris Hildebrandt
        Twitter:
        Github:
        Credits:        Iain Brighton (@iainbrighton) - PScribo module

    .LINK
        https://github.com/AsBuiltReport/AsBuiltReport.VMware.WorkspaceOneUEM
    #>

	# Do not remove or add to these parameters
    param (
        [String[]] $Target,
        [PSCredential] $Credential
    )

    Write-PScriboMessage -Plugin "Module" -Message "Please refer to the AsBuiltReport.VMware.WorkspaceOneUEM GitHub website for more detailed information about this project."
    Write-PScriboMessage -Plugin "Module" -Message "Do not forget to update your report configuration file after each new version release: https://www.asbuiltreport.com/user-guide/new-asbuiltreportconfig/"
    Write-PScriboMessage -Plugin "Module" -Message "Documentation: https://github.com/AsBuiltReport/AsBuiltReport.VMware.WorkspaceOneUEM"
    Write-PScriboMessage -Plugin "Module" -Message "Issues or bug reporting: https://github.com/AsBuiltReport/AsBuiltReport.VMware.WorkspaceOneUEM/issues"

    # Check the current AsBuiltReport.VMware.WorkspaceOneUEM module
    $InstalledVersion = Get-Module -ListAvailable -Name AsBuiltReport.VMware.WorkspaceOneUEM -ErrorAction SilentlyContinue | Sort-Object -Property Version -Descending | Select-Object -First 1 -ExpandProperty Version

    if ($InstalledVersion) {
        Write-PScriboMessage -Plugin "Module" -Message "AsBuiltReport.VMware.WorkspaceOneUEM $($InstalledVersion.ToString()) is currently installed."
        $LatestVersion = Find-Module -Name AsBuiltReport.VMware.WorkspaceOneUEM -Repository PSGallery -ErrorAction SilentlyContinue | Select-Object -ExpandProperty Version
        if ($LatestVersion -gt $InstalledVersion) {
            Write-PScriboMessage -Plugin "Module" -Message "AsBuiltReport.VMware.WorkspaceOneUEM $($LatestVersion.ToString()) is available."
            Write-PScriboMessage -Plugin "Module" -Message "Run 'Update-Module -Name AsBuiltReport.VMware.WorkspaceOneUEM -Force' to install the latest version."
        }
    }

    # Import Report Configuration
    $Report = $ReportConfig.Report
    $InfoLevel = $ReportConfig.InfoLevel
    $Options = $ReportConfig.Options

    # Used to set values to TitleCase where required
    $TextInfo = (Get-Culture).TextInfo

	# Update/rename the $System variable and build out your code within the ForEach loop. The ForEach loop enables AsBuiltReport to generate an as built configuration against multiple defined targets.

    #region foreach loop
    foreach ($System in $Target) {



	}
	#endregion foreach loop
}
