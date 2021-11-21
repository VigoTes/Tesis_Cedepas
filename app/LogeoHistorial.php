<?php

namespace App;

use DateTime;
use Illuminate\Database\Eloquent\Model;

class LogeoHistorial extends Model
{
    protected $table = "logeo_historial";
    protected $primaryKey ="codLogeoHistorial";

    public $timestamps = false;   
    protected $fillable = ['codEmpleado','fechaHoraLogeo','ipLogeo'];

    public function getEmpleado(){
        return Empleado::findOrFail($this->codEmpleado);
    }

    public static function registrarLogeo(){
        date_default_timezone_set('America/Lima');
        $logeo = new LogeoHistorial();
        $empleado = Empleado::getEmpleadoLogeado();
        $logeo->codEmpleado= $empleado->codEmpleado;

        $logeo->fechaHoraLogeo=new DateTime();

        if(!empty($_SERVER['HTTP_CLIENT_IP'])){
            $logeo->ipLogeo=$_SERVER['HTTP_CLIENT_IP'];
        }
        else if(!empty($_SERVER['HTTP_X_FORWARDED_FOR'])){
            $logeo->ipLogeo=$_SERVER['HTTP_X_FORWARDED_FOR'];
        }
        else 
            $logeo->ipLogeo=$_SERVER['REMOTE_ADDR'];

        $logeo->save();

        $ipPrincipal = $empleado->getIPPrincipal();
        $ipLogeo = $logeo->ipLogeo;
        /* 
        if ( $ipLogeo  != $ipPrincipal){
            MaracsoftBot::enviarMensaje(
                "ALERTA. Inicio de sesión nuevo de '".$empleado->getNombreCompleto()."'. Acaba de ingresar con la IP ".$ipLogeo.
                " que no corresponde con su inicio de sesión normal de IP ".$ipPrincipal );
        }
        */
    }

    public function getNombreEmpleado(){
        $empleado=Empleado::findOrFail($this->codEmpleado);
        return $empleado->getNombreCompleto();
    }

    public function getFechaHora(){
        
        return date('d/m/Y H:i:s', strtotime($this->fechaHoraLogeo));
        

    }

    public function getColorAlerta(){
        $emp = $this->getEmpleado();
        if($emp->getIPPrincipal() == $this->ipLogeo )
            return "rgb(116, 209, 116)";

        return "rgb(235, 132, 132)";

    }
}
