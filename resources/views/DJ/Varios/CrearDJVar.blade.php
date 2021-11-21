@extends('Layout.Plantilla')

@section('titulo')
Crear DJ Var
@endsection
@section('contenido')
<div >
    <p class="h1" style="text-align: center">Registrar Nueva DJ - Var</p>
</div>

<form method = "POST" action = "{{route('DJVarios.Empleado.Guardar')}}" 
onsubmit="" id="frmDJVar" name="frmDJVar">
        
     
    @csrf
    <div class="container" style="">
        <div class="row">           
            <div class="col-md" style=""> {{-- COLUMNA IZQUIERDA 1 --}}
                <div class="container"> {{-- OTRO CONTENEDOR DENTRO DE LA CELDA --}}

                    <div class="row">
                        <div  class="colLabel">
                            <label for="fecha">Fecha Actual:</label>
                        </div>
                        <div class="col">
                            <div  style="width: 300px; " >
                                <input type="text" style="margin:0px auth;" class="form-control" name="fecha" id="fecha" disabled 
                                    value="{{ Carbon\Carbon::now()->format('d/m/Y') }}" >     
                            </div>
                        </div>
                        
                        <div class="w-100"></div> {{-- SALTO LINEA --}}
                        

                        <div  class="colLabel">
                            <label for="fecha">Domicilio:</label>
                        </div>
                        <div class="col">
                            <div  style="width: 300px; " >
                                <input type="text" class="form-control" name="domicilio" id="domicilio" value="">    
                            </div>
                        </div>
                    </div>


                </div>
                
                
                
                
            </div>


            <div class="col-md"> {{-- COLUMNA DERECHA --}}
                
                
                
                <div class="container"> {{-- OTRO CONTENEDOR DENTRO DE LA CELDA --}}

                    <div class="row">
                        <div class="colLabel">
                            <label for="ComboBoxMoneda">Moneda:</label>
                        </div>
                        <div class="col"> {{-- Combo box de itemMoneda --}}
                            <select class="form-control"  id="ComboBoxMoneda" name="ComboBoxMoneda" >
                                <option value="-1">-- Seleccionar --</option>
                                @foreach($listaMonedas as $itemMoneda)
                                    <option value="{{$itemMoneda->codMoneda}}" >
                                        {{$itemMoneda->nombre}}
                                    </option>                                 
                                @endforeach 
                            </select>      
                        </div>

                        <div class="w-100"></div> {{-- SALTO LINEA --}}
                        <div  class="colLabel">
                            <label for="codSolicitud">Código DJ Mov:</label>
                        </div>
                        <div class="col"> 
                            {{-- ESTE INPUT REALMENTE NO SE USARÁ PORQUE EL CODIGO cedep SE CALCULA EN EL BACKEND (pq es más actual) --}}
                            <input type="text" class="form-control" 
                                  value="{{App\DJGastosVarios::calcularCodigoCedepasLibre()}}" 
                                  readonly>     
                        </div>
                    </div>


                </div>
            </div>
        </div>
    </div>
    
      
           
         


        {{-- LISTADO DE DETALLES  --}}
        <div class="col-md-12 pt-3">     
            <div class="table-responsive">                           
                <table id="detalles" class="table table-striped table-bordered table-condensed table-hover" style='background-color:#FFFFFF;'> 
                    <thead >
                        <th width="10%" class="text-center">
                                                   
                            <div class="input-group date form_date " data-date-format="dd/mm/yyyy" data-provide="datepicker">
                                {{-- INPUT PARA EL CBTE DE LA FECHA --}}
                                <input type="text" style="text-align: center" class="form-control" name="nuevaFecha" id="nuevaFecha"
                                        value="{{ Carbon\Carbon::now()->format('d/m/Y') }}" style="font-size: 10pt;"> 
                                
                                <div class="input-group-btn">                                        
                                    <button class="btn btn-primary date-set btn-sm" type="button" style="display: none">
                                        <i class="fas fa-calendar fa-xs"></i>
                                    </button>
                                </div>
                            </div>  
                        </th>   
                        <!--                                        
                        <th width="20%"> 
                            <div> {{-- INPUT PARA LUGAR--}}
                                <input type="text" class="form-control" name="nuevoLugar" id="nuevoLugar">     
                            </div>
                            
                        </th>
                        -->                                 
                        <th >
                            <div > {{-- INPUT PARA CONCEPTO--}}
                                <input type="text" class="form-control" name="nuevoConcepto" id="nuevoConcepto">     
                            </div>
                        </th>
                        <th width="10%" class="text-center">
                            <div> {{-- INPUT IMPORTE--}}
                                <input type="number" min="0"  class="form-control" name="nuevoImporte" id="nuevoImporte">     
                            </div>

                        </th>
                        <th width="15%" class="text-center">
                            <div>
                                <button type="button" id="btnadddet" name="btnadddet" 
                                    class="btn btn-success" onclick="agregarDetalle()" >
                                    <i class="fas fa-plus"></i>
                                     Agregar
                                </button>
                            </div>      
                        
                        </th>                                            
                     
                    </thead>
                    
                    
                    <thead class="thead-default" style="background-color:#3c8dbc;color: #fff;">
                        <th  class="text-center">Fecha</th>                                        
                        <!-- <th >Lugar</th>                                 -->
                        <th > Concepto</th>
                        <th  class="text-center">Importe</th>
                        <th  class="text-center">Opciones</th>                                            
                     
                    </thead>
                    <tfoot>

                                                                                        
                    </tfoot>
                    <tbody>
                      
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
                    <input type="hidden" name="cantElementos" id="cantElementos">                              
                    <input type="hidden" class="form-control text-right" name="total" id="total" readonly>   
                    <input type="text" class="form-control text-right" name="totalMostrado" id="totalMostrado" readonly>   
                                                
                </div>   
            </div>
                    

                
        </div> 
        
        <div class="col-md-12 text-center">  
            <div id="guardar">
                <div class="form-group">
                    <!--
                    <button class="btn btn-primary" type="submit" 
                        id="btnRegistrar" data-loading-text="<i class='fa a-spinner fa-spin'></i> Registrando">
                        <i class='fas fa-save'></i> 
                        Registrar
                    </button>
                    -->
                    <button type="button" class="btn btn-primary float-right" id="btnRegistrar" 
                        data-loading-text="<i class='fa a-spinner fa-spin'></i> Registrando" 
                            onclick="registrar()">
                        
                        <i class='fas fa-save'></i> 
                        Registrar
                    </button> 
                   
                    <a href="{{route('DJVarios.Empleado.Listar')}}" class='btn btn-info float-left'>
                        <i class="fas fa-arrow-left"></i> 
                        Regresar al Menu
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
@include('Layout.ValidatorJS')
@section('script')
     {{-- <script src="/public/select2/bootstrap-select.min.js"></script>      --}}
    <script>
        var cont=0;
        var total=0;
        var detalleVar=[];
        

        $(document).ready(function(){
            
        });

        function registrar(){
            msje = validarFormCrear();
            if(msje!="")
                {
                    alerta(msje);
                    return false;
                }
            
            confirmar('¿Estás seguro de crear la DJ?','info','frmDJVar');
            
        }

        var listaArchivos = '';
                    
        function validarFormCrear(){ //Retorna TRUE si es que todo esta OK y se puede hacer el submit
            msj='';
            
            limpiarEstilos(['domicilio','ComboBoxMoneda']);
            msj = validarTamañoMaximoYNulidad(msj,'domicilio',{{App\Configuracion::tamañoMaximoDomicilio}},'Domicilio');
            msj = validarSelect(msj,'ComboBoxMoneda',-1,'Moneda');
            msj = validarCantidadMaximaYNulidadDetalles(msj,'cantElementos',{{App\Configuracion::valorMaximoNroItem}});

            return msj;
        }



    indexAEliminar = 0;
        /* Eliminar productos */
    function eliminardetalle(index){
        indexAEliminar = index;
        confirmarConMensaje("Confirmación","¿Desea eliminar el item N° "+(index+1)+"?",'warning',ejecutarEliminacionDetalle);    
    }

    function ejecutarEliminacionDetalle(){

        cont = cont - 1;
        $('#cantElementos').val(cont);
        detalleVar.splice(indexAEliminar,1);

        console.log('BORRANDO LA FILA' + indexAEliminar);
        //cont--;
        actualizarTabla();
    }



    function compararFechas(fecha, fechaIngresada){//1 si la fecha ingresada es menor (dd-mm-yyyy)
        diaActual=fechaIngresada.substring(0,2);
        mesActual=fechaIngresada.substring(3,5);
        anioActual=fechaIngresada.substring(6,10);
        dia=fecha.substring(0,2);
        mes=fecha.substring(3,5);
        anio=fecha.substring(6,10);


        if(parseInt(anio,10)>parseInt(anioActual,10)){
            //console.log('el año ingresado es menor');
            return 1;
        }else if(parseInt(anio,10)==parseInt(anioActual,10)){
            
            if(parseInt(mes,10)>parseInt(mesActual,10)){
                //console.log('el mes ingresado es menor');
                return 1;
            }else if(parseInt(mes,10)==parseInt(mesActual,10)){

                if(parseInt(dia,10)>parseInt(diaActual,10)){
                    //console.log('el dia ingresado es menor');
                    return 1;
                }else{
                    return 0;
                }

            }else return 0;

        }else return 0;

    }


    function agregarDetalle(){

            msjError="";
            // VALIDAMOS
            limpiarEstilos(['nuevaFecha','nuevoConcepto','nuevoImporte']);
            msjError = validarNulidad(msjError,'nuevaFecha','Fecha');
            msjError = validarTamañoMaximoYNulidad(msjError,'nuevoConcepto',{{App\Configuracion::tamañoMaximoConceptoDJ}},'Concepto'); 
            msjError = validarPositividadYNulidad(msjError,'nuevoImporte','Importe');
            if(msjError!=""){
                alerta(msjError);
                return false;
            }

            nuevaFecha = $("#nuevaFecha").val();    
            nuevoConcepto = $("#nuevoConcepto").val(); 
            nuevoImporte = $("#nuevoImporte").val(); 
            
            // FIN DE VALIDACIONES
            if(detalleVar.length>0){
                temp=0;
                band=true;

                for (let item = 0; item < detalleVar.length && band; item++) {
                    element = detalleVar[item];
                    //console.log('FECHA Nº' + item + ': '+element.fecha+' se compara con '+fecha);
                    if(compararFechas(element.fecha, nuevaFecha)==1){ 
                        //console.log('mi fecha es menor');
                        temp=item;
                        band=false;
                    }else{
                        //console.log('mi fecha es mayor');
                        temp=item+1;
                    }
                }
                
                detalleVar.splice(temp,0,{
                    fecha:nuevaFecha,
                    concepto: nuevoConcepto,
                    importe:nuevoImporte
                });
                
            }else{
                detalleVar.push({
                    fecha:nuevaFecha,
                    concepto: nuevoConcepto,
                    importe:nuevoImporte
                });   
            }
          
            cont++;
            actualizarTabla();
            
            //$('#nuevaFecha').val('');
            //$('#nuevoLugar').val('');
            $('#nuevoConcepto').val('');
            $('#nuevoImporte').val('');    
            
    }

    function actualizarTabla(){
        
        
        
        //funcion para poner el contenido de detallesVenta en la tabla
        //tambien actualiza el total
        //$('#detalles')
        total=0;
        //vaciamos la tabla
        for (let index = 100; index >=0; index--) {
            $('#fila'+index).remove();
            //console.log('borrando index='+index);
        }

        //insertamos en la tabla los nuevos elementos
        for (let item = 0; item < detalleVar.length; item++) {
            
            element = detalleVar[item];
            
            cont = item+1;

            total=total +parseFloat(element.importe); 

            //importes.push(importe);
            //item = getUltimoIndex();
            var fila=  `
                <tr class="selected" id="fila`+item+`" name="fila` +item+`">            

                                         
                            <td style="text-align:center;">              
                                <input type="text" class="form-control" name="colFecha`+item+`" id="colFecha`+item+`" value="`+element.fecha+`" readonly style="font-size:10pt; text-align:center"  >
                            </td>                          
                    
                            <td style="text-align:center;">              
                                <input type="text" class="form-control" name="colConcepto`+item+`" id="colConcepto`+item+`" value="`+element.concepto+`" readonly>
                            </td>       

                                         

                            <td  style="text-align:right;">    
                                <input style="text-align:right;" type="text" class="form-control" value="`+number_format(element.importe,2)+`" readonly>
                                <input type="hidden" class="form-control" name="colImporte`+item+`" id="colImporte`+item+`" value="`+(element.importe)+`" readonly>
                            </td>         
                                     
                            <td style="text-align:center;">               
                                <button type="button" class="btn btn-danger btn-xs" onclick="eliminardetalle(`+item+`);">
                                    <i class="fa fa-times" ></i>   
                                </button>     
                                <button type="button" class="btn btn-xs" onclick="editarDetalle(`+item+`);">
                                    <i class="fas fa-pen"></i>            
                                </button>  

                            </td>               
                        </tr>                 `;


            $('#detalles').append(fila); 
        }

       
        //console.log("{{Carbon\Carbon::now()->format('d/m/Y')}}" );
        $('#nuevaFecha').val("{{Carbon\Carbon::now()->format('d/m/Y')}}");


        $('#cantElementos').val(cont);
        $('#totalMostrado').val(total,2);
    }



    function editarDetalle(index){

        
        
        $('#nuevaFecha').val( detalleVar[index].fecha );
        //$('#nuevoLugar').val( detalleVar[index].lugar );
        $('#nuevoImporte').val( detalleVar[index].importe );
        $('#nuevoConcepto').val( detalleVar[index].concepto );
        
        indexAEliminar=index;
        ejecutarEliminacionDetalle();
        
    }










    </script>

   








@endsection
