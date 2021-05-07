Function AzureConnect-ServicePrincipal {
    <#
    .SYNOPSIS
        Accepts Parameters for an Azure Service Principal Connection.
    .DESCRIPTION
        TBD
    .EXAMPLE
        TBD
    #>
      [CmdletBinding(SupportsShouldProcess = $true)]
    param(
        # The Azure Password.
        [Parameter(Mandatory = $true)]
        [string]$AzServicePassword,

        # Azure Service ID.
        [Parameter(Mandatory = $true)]
        [string]$AzServiceId,

        # Application ID.
        [Parameter(Mandatory = $true)]
        [switch]$AzAplicationId,

        # Azure Tenant ID.
        [Parameter(Mandatory = $false)]
        [switch]$AzTenantId,

        # If specified, will copy files to the container if the container already exists.
        [Parameter(Mandatory = $false)]
        [switch]$Force
    )
    # TBD: Error detection handling and read from file or pass in hash.
    $AzPassword = ConvertTo-SecureString $AzServicePassword -AsPlainText -Force
    $PSCred = New-Object System.Management.Automation.PSCredential($AzAplicationId, $AzPassword)
    Connect-AzAccount -ServicePrincipal -Credential $PSCred -Tenant $AzTenantId
}
