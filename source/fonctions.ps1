# Couleur Ecriture

function color($BackgroundColor, $ForegroundColor)
{
    # save the current color
    $fc = $host.UI.RawUI.ForegroundColor
    $bc = $host.UI.RawUI.BackgroundColor
    


    # set the new color
    $host.UI.RawUI.ForegroundColor = $ForegroundColor
    $host.UI.RawUI.BackgroundColor = $BackgroundColor


    # output
    if ($args) {
        Write-Output $args
    }
    else {
        $input | Write-Output
    }

    # restore the original color
    $host.UI.RawUI.ForegroundColor = $fc
    $host.UI.RawUI.BackgroundColor = $bc
}

