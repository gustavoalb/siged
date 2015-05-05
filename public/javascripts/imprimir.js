<script>
function Impressao( preVisualizar )
{
	var CorpoMensagem = document.body.innerHTML;
	document.body.innerHTML = ImprimirConteudo.innerHTML;
	if( preVisualizar )
	{
		PreVisualizar();
	}
	else
	{
		window.print();
	}
	document.body.innerHTML = CorpoMensagem;
}

function PreVisualizar()
{
	try
	{
		 //Utilizando o componente WebBrowser1 registrado no MS Windows Server 2000/2003 ou XP/Vista
		 var WebBrowser = '<OBJECT ID="WebBrowser1" WIDTH=0 HEIGHT=0 CLASSID="CLSID:8856F961-340A-11D0-A96B-00C04FD705A2"></OBJECT>';
		 document.body.insertAdjacentHTML('beforeEnd', WebBrowser);
		 WebBrowser1.ExecWB( 7, 1 );
		 WebBrowser1.outerHTML = "";
	}
	catch(e)
	{
		alert("Para visualizar a impressão você precisa habilitar o uso de controles ActiveX na página.");
		return;
	}
}
</script>