﻿<#

.COPYRIGHT
Copyright (c) Office Center Hønefoss AS. All rights reserved. Based on code from Jan Egil Ring (Crayon). Licensed under the MIT license.
See https://github.com/officecenter/OCH-Public/blob/master/LICENSE for license information.

#>

Function Update-AtwsPriceListWorkTypeModifier
{
  <#
      .SYNOPSIS
      This function updates a PriceListWorkTypeModifier through the Autotask Web Services API.
      .DESCRIPTION
      This function updates a PriceListWorkTypeModifier through the Autotask Web Services API.
      .EXAMPLE
      Update-AtwsPriceListWorkTypeModifier [-ParameterName] [Parameter value]
      Use Get-Help Update-AtwsPriceListWorkTypeModifier
      .NOTES
      NAME: Update-AtwsPriceListWorkTypeModifier
  #>
	  [CmdLetBinding(DefaultParameterSetName='Input_Object')]
    Param
    (
                [Parameter(
          Mandatory = $True,
          ParameterSetName = 'Input_Object'
        )]
        [ValidateNotNullOrEmpty()]
        [Autotask.PriceListWorkTypeModifier]
        $InputObject
    )



          

  Begin
  { 
    If (-not($global:atws.Url))
    {
      Throw [ApplicationException] 'Not connected to Autotask WebAPI. Run Connect-AutotaskWebAPI first.'
    }
    Write-Verbose ('{0}: Begin of function' -F $MyInvocation.MyCommand.Name)

  }   

  Process
  {   

    
    Set-AtwsData -Entity $InputObject }   

  End
  {
    Write-Verbose ('{0}: End of function' -F $MyInvocation.MyCommand.Name)

  }


        
}