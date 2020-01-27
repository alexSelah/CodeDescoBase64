<# 
.NAME
    Codificador Base 64 con Interfaz Gráfica. PoweShell.
#>

# Librerías a usar
Add-Type -AssemblyName System.Windows.Forms
[System.Windows.Forms.Application]::EnableVisualStyles()


# Damos forma a los elementos
Add-Type -AssemblyName System.Windows.Forms
[System.Windows.Forms.Application]::EnableVisualStyles()

$Form                            = New-Object system.Windows.Forms.Form
$Form.ClientSize                 = '400,585'
$Form.text                       = "Form"
$Form.BackColor                  = "#000000"
$Form.TopMost                    = $false
$Form.Text                       = "Codificador/Decodificador Base64"
$Form.FormBorderStyle            = 'Fixed3D'
$Form.MaximizeBox                = $false
$Form.StartPosition              = "CenterScreen"

$iconBase64      = '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'
$iconBytes       = [Convert]::FromBase64String($iconBase64)
$stream          = New-Object IO.MemoryStream($iconBytes, 0, $iconBytes.Length)
$stream.Write($iconBytes, 0, $iconBytes.Length);
$iconImage       = [System.Drawing.Image]::FromStream($stream, $true)
$Form.Icon       = [System.Drawing.Icon]::FromHandle((New-Object System.Drawing.Bitmap -Argument $iconImage).GetHIcon())



$TextBox1                        = New-Object system.Windows.Forms.TextBox
$TextBox1.multiline              = $true
$TextBox1.width                  = 378
$TextBox1.height                 = 200
$TextBox1.Anchor                 = 'top,right,bottom,left'
$TextBox1.location               = New-Object System.Drawing.Point(8,54)
$TextBox1.Font                   = 'Microsoft Sans Serif,10'

$Escriba                         = New-Object system.Windows.Forms.Label
$Escriba.text                    = "Escribe el texto que deseas codificar o descodificar:"
$Escriba.AutoSize                = $true
$Escriba.width                   = 25
$Escriba.height                  = 10
$Escriba.location                = New-Object System.Drawing.Point(8,24)
$Escriba.Font                    = 'Microsoft Sans Serif,12'
$Escriba.ForeColor               = "#ffffff"

$Code                            = New-Object system.Windows.Forms.Button
$Code.BackColor                  = "#9fec4a"
$Code.text                       = "Codificar"
$Code.width                      = 82
$Code.height                     = 48
$Code.location                   = New-Object System.Drawing.Point(20,268)
$Code.Font                       = 'Microsoft Sans Serif,10'

$Decode                          = New-Object system.Windows.Forms.Button
$Decode.BackColor                = "#4a90e2"
$Decode.text                     = "Decodificar"
$Decode.width                    = 89
$Decode.height                   = 48
$Decode.location                 = New-Object System.Drawing.Point(136,268)
$Decode.Font                     = 'Microsoft Sans Serif,10'
$Decode.ForeColor                = "#ffffff"

$Limpia                          = New-Object system.Windows.Forms.Button
$Limpia.BackColor                = "#f5a623"
$Limpia.text                     = "Limpiar"
$Limpia.width                    = 64
$Limpia.height                   = 41
$Limpia.location                 = New-Object System.Drawing.Point(310,270)
$Limpia.Font                     = 'Microsoft Sans Serif,10'
$Limpia.ForeColor                = "#000000"

$TextBox2                        = New-Object system.Windows.Forms.TextBox
$TextBox2.multiline              = $true
$TextBox2.width                  = 375
$TextBox2.height                 = 200
$TextBox2.location               = New-Object System.Drawing.Point(8,354)
$TextBox2.Font                   = 'Microsoft Sans Serif,10'

$Result                          = New-Object system.Windows.Forms.Label
$Result.text                     = "Resultado: (Puedes copiar y pegar)"
$Result.AutoSize                 = $true
$Result.width                    = 25
$Result.height                   = 10
$Result.location                 = New-Object System.Drawing.Point(8,331)
$Result.Font                     = 'Microsoft Sans Serif,10'
$Result.ForeColor               = "#ffffff"

$Form.controls.AddRange(@($TextBox1,$Escriba,$Code,$Decode,$TextBox2,$Result,$Limpia))

$Code.Add_Click({ 
    $Bytes = [System.Text.Encoding]::Unicode.GetBytes($TextBox1.Text)
    $EncodedText =[Convert]::ToBase64String($Bytes)
    $TextBox2.Text = $EncodedText
 })

$Decode.Add_Click({ 
    $DecodedText = [System.Text.Encoding]::Unicode.GetString([System.Convert]::FromBase64String($TextBox1.Text))
    $TextBox2.Text = $DecodedText
})

$Limpia.Add_Click({  
    $TextBox1.Text = ""
    $TextBox2.Text = ""
})


 $Form.ShowDialog()


