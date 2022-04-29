
$reps = 0

$startTime = (Get-Date -UFormat %s -Millisecond 0)

Write-Output "starting"


while($true){
	$Response = Invoke-WebRequest -uri "https://bing.com"

	$reps +=1

	$runtime = $((Get-Date -UFormat %s -Millisecond 0) - $startTime )
	Write-Output ($reps / $runtime)

}



