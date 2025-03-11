# Get services where StartType is Automatic and Status is not Running
$services = Get-Service | Where-Object { $_.StartType -eq 'Automatic' -and $_.Status -ne 'Running' }

# Create an array to store custom objects for each service
$serviceInfo = @()

# Iterate through each service
foreach ($service in $services) {
    # Create a custom object with desired properties
    $serviceObject = New-Object PSObject -Property @{
        ServiceName = $service.Name
        StartType = $service.StartType
        Status = $service.Status
    }
    
    # Add the object to the array
    $serviceInfo += $serviceObject
}

# Display the information in a formatted table
$serviceInfo | Format-Table -AutoSize
