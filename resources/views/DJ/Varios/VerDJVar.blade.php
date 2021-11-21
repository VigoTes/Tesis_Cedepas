@extends('Layout.Plantilla')

@section('titulo')
    Ver DJ Varios
@endsection
@section('contenido')
<div >
    <p class="h1" style="text-align: center">Ver DJ Varios {{$DJ->codigoCedepas}}</p>
</div>

<form method = "POST" action = "" 
        onsubmit="" id="frmDJVar" name="frmDJVar">
        
     
    @csrf
    <div class="container" style="">
        <div class="row">           
            <div class="col-md" style=""> {{-- COLUMNA IZQUIERDA 1 --}}
                <div class="container"> {{-- OTRO CONTENEDOR DENTRO DE LA CELDA --}}

                    <div class="row">
                        <div  >
                            <label for="fecha">Domicilio:</label>
                        </div>
                        <div class="col">
                         
                                <input type="text" class="form-control" name="domicilio" id="domicilio" value="{{$DJ->domicilio}}" readonly>    
                         
                        </div>
                        
                        <div class="w-100"></div> {{-- SALTO LINEA --}}
                        <div  >
                            <label for="codSolicitud">Código DJ Var:</label>
                        </div>
                        <div class="col"> 
                            {{-- ESTE INPUT REALMENTE NO SE USARÁ PORQUE EL CODIGO cedep SE CALCULA EN EL BACKEND (pq es más actual) --}}
                            <input type="text" class="form-control" 
                                  value="{{$DJ->codigoCedepas}}" 
                                  readonly>     
                        </div>

                        <div  >
                            <label for="fecha">Fecha y Hora:</label>
                        </div>
                        <div class="col">
                            <div  style="width: 300px; " >
                                <input type="text" style="margin:0px auth;" class="form-control" name="fecha" id="fecha" disabled 
                                    value="{{$DJ->getFechaHoraCreacion()}}" readonly>     
                            </div>
                        </div>
                        
                        
                        

                        <div >
                            <label for="ComboBoxMoneda">Moneda:</label>
                        </div>
                        <div class="col"> {{-- Combo box de itemMoneda --}}
                            <input type="text" class="form-control" 
                                  value="{{$DJ->getMoneda()->nombre}}" 
                                  readonly>  
                        </div>


                    </div>


                </div>
                
                
                
                
            </div>

        </div>
        <div class="row leyenda">
            &nbsp;
            Yo, 
            <b>&nbsp;{{$DJ->getEmpleado()->getNombreCompleto()}}&nbsp;</b>
            , identificado/a con DNI 
            <b> &nbsp;{{$DJ->getEmpleado()->dni}}&nbsp;</b>
             domiciliado/a en 
            <b> &nbsp;{{$DJ->domicilio}} &nbsp;</b> DECLARO BAJO JURAMENTO haber realizado gastos de los cuales no tengo documentos sustentatorios hasta por la suma de
            <b> &nbsp;{{$DJ->getMoneda()->simbolo}} {{number_format($DJ->importeTotal,2)}} &nbsp;</b>
              tal como detallo a continuación:
        </div>
    </div>
    
      
           
         


    {{-- LISTADO DE DETALLES  --}}
    <div class="col-md-12 pt-3">     
        <div class="table-responsive">                           
            <table id="detalles" class="table table-striped table-bordered table-condensed table-hover" style='background-color:#FFFFFF;'> 
                          
                
                <thead class="thead-default" style="background-color:#3c8dbc;color: #fff;">
                    <th  class="text-center">Fecha</th>                                                                       
                    <th > Concepto</th>
                    <th  class="text-center">Importe</th>
                    
                </thead>
               
                <tbody>
                    @foreach ($listaDetalles as $itemDetalle)
                        <tr>
                            <td class="al-cen">
                                {{$itemDetalle->getFecha()}}
                            </td>
                            <td class="al-cen">
                                {{$itemDetalle->concepto}}
                            </td>
                            <td class="al-der">
                                {{$DJ->getMoneda()->simbolo}}
                                {{number_format($itemDetalle->importe,2)}}
                            </td>
                            

                        </tr>
                    @endforeach
                </tbody>
            </table>
        </div> 
            
        <div class="row" id="divTotal" name="divTotal">                       
            <div class="col-md-8">
            </div>   
            <div class="col-md-2">                        
                <label for="">Total : </label>    
            </div>   
            <div class="col-md-2">
                {{-- HIDDEN PARA GUARDAR LA CANT DE ELEMENTOS DE LA TABLA --}}
               
                <input type="text" class="form-control text-right" name="totalMostrado" id="totalMostrado" readonly value="{{$DJ->getMoneda()->simbolo}} {{number_format($DJ->importeTotal,2)}}">   
                                            
            </div>   
        </div>
                

            
    </div> 
    <br>
    <div class="col-md-12 text-center">  
       <div class="row">
            <div class="col">
                <a href="{{route('DJVarios.Empleado.Listar')}}" class='btn btn-info'>
                    <i class="fas fa-arrow-left"></i> 
                    Regresar al Menu
                </a>  

            </div>
            <div class="col">


            </div>
            <div class="col">


            </div>
            <div class="col">
                <a href="{{route('DJVarios.Empleado.descargarPDF',$DJ->codDJGastosVarios)}}" 
                    class='btn btn-info' title="Descargar PDF">
                    Descargar PDF <i class="fas fa-file-download"></i>
                </a>

            </div>
            <div class="col">
                <a target="pdf_djvar{{$DJ->codDJGastosVarios}}" href="{{route('DJVarios.Empleado.verPDF',$DJ->codDJGastosVarios)}}" 
                    class='btn btn-info'  title="Ver PDF">
                    Ver PDF <i class="fas fa-file-pdf"></i>
                </a>
                
            </div>
       </div>
               
                            
                
        
    </div>
   
</form>
@endsection

{{-- ************************************************************************************************************* --}}
{{-- ************************************************************************************************************* --}}
{{-- ************************************************************************************************************* --}}
{{-- ************************************************************************************************************* --}}
{{-- ************************************************************************************************************* --}}
{{-- ************************************************************************************************************* --}}
{{-- ************************************************************************************************************* --}}
{{-- ************************************************************************************************************* --}}
{{-- ************************************************************************************************************* --}}
{{-- ************************************************************************************************************* --}}
{{-- ************************************************************************************************************* --}}

@include('Layout.EstilosPegados')

<style>
    .al-der{
        text-align: right;
    }

    .al-cen{
        text-align: center;
    }

    .al-der{
        text-align: right;
    }

    .fondito{
        background-color: rebeccapurple
    }
    
    .leyenda{
        border-radius: 10px;
        background-color:rgb(190, 190, 190)
    }
    label{
        margin-top: 8%;
    }
</style>