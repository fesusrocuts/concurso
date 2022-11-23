from django.shortcuts import render
from django.http import JsonResponse
from django.utils.translation import gettext_lazy as _
from .models import App1QuienEsFesus, App1Concurso, App1Empleado, App1ConcursoReglas, App1ConcursoInscritos, App1ConcursoInscritosLog, App1Categoria, App1ConcursoInscritosPuntaje
import datetime
from django.conf import settings
from django.http import HttpResponse
from django.utils import translation
from django.shortcuts import redirect
from django.contrib.auth.models import User
from django.core.serializers import serialize
import locale


# Create your views here.
def getNewId(currentModel):
    try:
        print("getNewId")
        print(getNewId)
        currentModel = currentModel.objects.order_by('-id')[:1]
        currentModelId = currentModel[0].id + 1 if len(currentModel)>0 else 1 
        print(currentModelId)
        return currentModelId
    except:
        return 0;

def __t(request):
    print("********************************")
    print(request)
    print("********************************")
    loc = locale.getlocale()
    print(loc)
    print("********************************")
    print("detectar idioma")
    print(request.META['HTTP_ACCEPT_LANGUAGE'])
    detectlang = "" + request.META['HTTP_ACCEPT_LANGUAGE']
    user_language = detectlang[:2] if len(detectlang)>0 else 'en'
    
    user_language2 = request.get_full_path()
    user_language2 = user_language2[1:3]
    translation.activate(user_language if len(user_language2) == 0 else user_language2)
    return {
        "allowlangs":["es","en"],
        "branding":_("Fesus Rocuts"),
        "developedby":_("Developed by"),
        "whoIam":App1QuienEsFesus.getYotas,
        "getLinkedIn":App1QuienEsFesus.getLinkedIn,
        "whoIamTech":App1QuienEsFesus.getYotasTech,
        "whoIamTest":App1QuienEsFesus.getYotasTest,
        "home":_('home'),
        "admin":_('administration'),
        "talentshows":_('Talent shows'),
        "openconvocations":_('Open convocations'),
        "openconvocationsurl":_('en_concursos_abiertos'),
        "closedconvocations":_('Closed convocations'),
        "closedconvocationsurl":_('en_concursos_cerrados'),
        "allconvocations":_('All convocations'),
        "talentshowsdesc":_('Open convocations, we are a company with insights to improve and promote the good health of all collaborators'),
        "registrationsuntil":_('Registrations until'),
        "apply":_('Apply'),
        "results":_('Results'),
        "seeresults":_("See the results"),
        "startdate":_('Start date'),
        "closingdate":_('Closing date'),
        "browserlang":_('en-us')
    }

def resetearUsuario (request):
    users = User.objects.all()
    for user in users:
        user.set_password('ClaveFacil123')
        user.save()
    return redirect('/admin')

def cambiarIdiomaA (request):
    print("********************************")
    print(request)
    print(request.get_full_path())
    print("********************************")
    print("redireccion")
    user_language = request.get_full_path()
    translation.activate(user_language[1:3])
    return listaConcursos(request)
    #response = redirect('/')
    #return response

def redirecciontIdioma (request):
    print(request.META['HTTP_ACCEPT_LANGUAGE'])
    detectlang = "" + request.META['HTTP_ACCEPT_LANGUAGE']
    user_language = detectlang[:2] if len(detectlang)>0 else 'en'
    return redirect('/'+user_language)

'''
fn:     registra concursos por medio de los argumentos recibidos para comprobar que es quien dice ser
args:   ref1 = id, ref2 = idcategoria, ref3 = cedula, ref4 = codigoEmpleado
return: String with status
extra:  ejemplo1: http://127.0.0.1:8080/concurso/1/categoria/1/user/109020/cod/555 (no es asesor y no esta en reglas)
extra:  ejemplo2: http://127.0.0.1:8080/concurso/1/categoria/1/user/999/cod/321 (si ciudad)
extra:  ejemplo3: http://127.0.0.1:8080/concurso/1/categoria/2/user/43256/cod/453 (si ciudad) - limite de cupos jugando con App1Concurso.maxpersonas 
extra:  ejemplo4: http://127.0.0.1:8080/concurso/1/categoria/2/user/775521/cod/5489 (otra ciudad)
'''
def registroConcursos (request, ref1, ref2, ref3, ref4):
    print("registroConcursos")
    print("ref1:{} ref2:{} ref3:{} ref4:{}".format(ref1,ref2,ref3,ref4))
    #concurso = App1Concurso.objects.get(id=ref1)
    concurso = App1Concurso.objects.filter(id=ref1, estado=1).exclude(fecha_max_registro__lte=datetime.date.today().strftime("%Y-%m-%d"))
    regla1 = App1ConcursoReglas.objects.filter(idconcurso=ref1, idcategoria=ref2, estado=1)
    print("regla1")
    print(len(regla1))
    respuesta = ""
    bloquearformulario=0
    bloquearformulario2=0
    
    print(concurso)
    _idempleado=0
    _idcargo=0
    _idciudad=0
    if len(concurso) > 0 and len(regla1) > 0:
        print("buscando empleado...")
        empleado = App1Empleado.objects.filter(cedula=ref3, codigoempleado=ref4, estado=1)
        #categoria = App1Categoria.objects.filter(id=ref2, estado=1)
        # base para evitar que al ser actualizados se lance una excepción por no existir el dato
       
        
        if len(empleado) > 0:
            print("empleado")
            print(len(empleado))
            print(empleado)
            _idempleado=empleado[0].id
            _idcargo=empleado[0].idcargo
            _idciudad=empleado[0].idciudad
            
            print(_idcargo)
            print(_idciudad)
            regla2 = App1ConcursoReglas.objects.filter(idconcurso=ref1, idcategoria=ref2, idciudad=_idciudad, idcargo=_idcargo, estado=1)
            print("regla2")
            print(len(regla2))
            if len(regla2) > 0:
                print("registrando nuevo")
                print(ref1)
                print(_idempleado)
                print(ref2)
                # buscar si no existe registros con id concurso y id empleado
                App1ConcursoInscritosExiste = App1ConcursoInscritos.objects.filter(idconcurso=ref1, idempleado=_idempleado, estado=1)
                if len(App1ConcursoInscritosExiste) > 0:
                    App1ConcursoInscritosTemp = App1ConcursoInscritos(
                        id=App1ConcursoInscritosExiste[0].id,
                        idconcurso=App1Concurso(id=ref1),
                        idempleado=App1Empleado(id=_idempleado),
                        idcategoria=App1ConcursoInscritosExiste[0].idcategoria,
                        registro=App1ConcursoInscritosExiste[0].registro,
                        estado=App1ConcursoInscritosExiste[0].estado,
                        actualizado=datetime.datetime.now(),
                        intentos=App1ConcursoInscritosExiste[0].intentos + 1
                        )
                    App1ConcursoInscritosTemp.save()                    
                    print("Usted ya cuenta con una inscripción, recuerde mirar todo lo relacionado del concurso en el sitio web.")
                    respuesta = "Usted ya cuenta con una inscripción, recuerde mirar todo lo relacionado del concurso en el sitio web."
                    bloquearformulario=1
                else:
                    
                    # verificar cupos tabla App1Concurso.maxpersonas 
                    App1ConcursoInscritosCuenta = App1ConcursoInscritos.objects.filter(idconcurso=ref1, estado=1)
                    if len(App1ConcursoInscritosCuenta) < concurso[0].maxpersonas:
                        App1ConcursoInscritosTemp = App1ConcursoInscritos(
                            idconcurso=App1Concurso(id=ref1),
                            idempleado=App1Empleado(id=_idempleado),
                            idcategoria=App1Categoria(id=ref2),
                            registro=datetime.datetime.now(),
                            estado=1,
                            intentos=1
                        )
                        App1ConcursoInscritosTemp.save()
                        print("Lo hemos registrado con exito, este pendiente del sitio web, buen día.")
                        respuesta = "Lo hemos registrado con exito, este pendiente del sitio web, buen día."
                    else:
                        print("Lo sentimos, ya llego al límite de participantes!")
                        respuesta = "Lo sentimos, ya llego al límite de participantes!"
                        bloquearformulario=1
            else:
                print("Lo sentimos, no cumple con los criterios mínimos para el registro, sigue pendiente de las próximas convocatorias, gracias!")
                respuesta = "Lo sentimos, no cumple con los criterios mínimos para el registro, sigue pendiente de las próximas convocatorias, gracias!"
                bloquearformulario=1
        else:
            print("Consulte con su empleador, no tenemos acceso a su registro.")
            respuesta = "Consulte con su empleador, no tenemos acceso a su registro."
            bloquearformulario2=1
            bloquearformulario=0
    else:
        print("Disculpa, no alcanzaste a registrarte, sigue pendiente de las próximas convocatorias, gracias!")
        respuesta = "Disculpa, no alcanzaste a registrarte, sigue pendiente de las próximas convocatorias, gracias!"
        bloquearformulario=1

    try:
        # agregar log si bloquearformulario==1, este es un log de fallas o respuestas negadas al registro de concursos
        if bloquearformulario==1 or bloquearformulario2==1:
            print("registrar en App1ConcursoInscritosLogExiste")
            App1ConcursoInscritosLogExiste = App1ConcursoInscritosLog.objects.filter(idconcurso=ref1, cedula=ref3, codigoempleado=ref4)
            
            if len(App1ConcursoInscritosLogExiste) > 0:
                bloquearformulario=1
                App1ConcursoInscritosLogTemp = App1ConcursoInscritosLog(
                    id=App1ConcursoInscritosLogExiste[0].id,
                    idconcurso=ref1,
                    idempleado=_idempleado,
                    idcategoria=ref2,
                    cedula=ref3,
                    codigoempleado=ref4,
                    registro=App1ConcursoInscritosLogExiste[0].registro,
                    estado=1,
                    intentos=App1ConcursoInscritosLogExiste[0].intentos + 1,
                    actualizado=datetime.datetime.now(),
                    descripcion=App1ConcursoInscritosLogExiste[0].descripcion + "; " + respuesta
                )
            else:
                '''
select * from app1_concurso_inscritos_log
CREATE SEQUENCE ConcursoInscritosLogCountBy1  
    START WITH 1  
    INCREMENT BY 1 ;  
GRANT ALTER ON OBJECT::ConcursoInscritosLogCountBy1 TO app1_concurso_inscritos_log #bloqueado por acceso al servidor, no tengo los suficientes permioss, por eso no registra 
id=getNewId(App1ConcursoInscritosLog), #se crea una funcion que suple las restriciones del ORM y de los permisos en la db para hacer grant
                '''
                App1ConcursoInscritosLogTemp = App1ConcursoInscritosLog(
                    id=getNewId(App1ConcursoInscritosLog), #se crea una funcion que suple las restriciones del ORM y de los permisos en la db para hacer grant
                    idconcurso=ref1,
                    idempleado=_idempleado,
                    idcategoria=ref2,
                    cedula=ref3,
                    codigoempleado=ref4,
                    registro=datetime.datetime.now(),
                    estado=1,
                    intentos=1,
                    descripcion=respuesta
                )
            App1ConcursoInscritosLogTemp.save()
    except:
        pass
    #print(empleado)
    #return redirect('/')
    #return render(request, "respuesta.html", {"respuesta": respuesta})
    return JsonResponse({"respuesta": respuesta, "bloquear": bloquearformulario})

'''
fn:     _sort
args:   data=list, filter1=nombre de refetencia de ordenamiento, reverse=True o False elige el orden asc = False, desc = True
return: data asc or data desc
'''
def _sort(data, filter1, reverse=False):
    i=0
    y=[]
    z=[]
    x=data
    while(i<len(x)):
        y.append(int(x[i][filter1]))
        i+=1
    y.sort(reverse=reverse)

    while len(x)>len(z):
        for i in y:
            for o in x:
                if o["puntaje"]==i:
                    z.append(o)
    return z


'''
fn:     cargar resutlados de concursos por medio de los argumentos recibidos para comprobar el identificador y demas que se deba
args:   ref1 = id
return: String with status
extra:  ejemplo1: http://127.0.0.1:8080/resultados/1 (no es asesor y no esta en reglas)
extradb: sql to model
query para emular: 
SELECT b.idempleado, a.idinscrito, a.puntaje from app1_concurso_inscritos_puntaje as a 
INNER JOIN app1_concurso_inscritos as b on (b.id=a.idinscrito) ORDER BY a.puntaje DESC
'''
def verResultadosConcurso (request, ref1):
    print("verResultadosConcurso")
    print("ref1:{}".format(ref1))
    #concurso = App1Concurso.objects.get(id=ref1)
    incritos = App1ConcursoInscritos.objects.filter(idconcurso=ref1, estado=1).values()
    concurso = App1Concurso.objects.filter(id=ref1, estado=1).values()
    #print(incritos)
    data = []
    
    '''
    usar la funcion que cree para organizar datos en bruto con ordenamiento descenete
    # puntaje e inscritos resolviendo
    App1ConcursoInscritosPuntaje.objects.exclude(
        entry__in=App1ConcursoInscritos.objects.filter(
            attribute1='test',
            attribute2=1,
        ),
    )
    '''
    
    pos = 0
    for p in incritos:
        pos += 1
        #print(p)
        empleado = App1Empleado.objects.filter(id=p["idempleado_id"]).values()
        print(empleado[0]["nombre"])
        print(concurso[0]["concurso"])
        categoria = App1Categoria.objects.filter(id=p["idcategoria_id"]).values()
        
        puntajeDb = App1ConcursoInscritosPuntaje.objects.filter(idinscrito=p["id"], estado=1).values()
        puntaje = 0
        
        try:
            puntaje = puntajeDb[0]["puntaje"]
        except:
            pass

        data.append({
            "puestos": 0,
            #"concurso":concurso[0]["concurso"],
            "categoria":categoria[0]["categoria"],
            "empleado":empleado[0]["nombre"],
            #"idempleado":empleado[0]["id"],
            "puntaje":puntaje,
            "intentos":p["intentos"]
        })
        data = _sort(data, "puntaje", True)
    
    puestos = 10 # se organiza descendente
    filasGanadoras=3 if len(data)>3 else len(data) #se cuenta desde la primera 
    for i in range(0, filasGanadoras):
        data[i]["puestos"] = puestos - i

    respuesta = "Resultados encontrados: {}".format(len(data))
    
    return JsonResponse({ "respuesta": respuesta, "bloquear": 1, "incritos": data })

    
def listaConcursos (request):
    #concursos = App1Concurso.objects.all()
    #datetime.date.today().strftime("%Y-%m-%d")
    #concursos = App1Concurso.objects.filter(fecha_fin="2022-11-22")
    # fechas ya caducadas chaos!
    concursos = App1Concurso.objects.order_by('fecha_inicio', 'fecha_max_registro').exclude(fecha_fin__lte=datetime.date.today().strftime("%Y-%m-%d"))
    categorias = App1Categoria.objects.filter(estado=1)
    reglasConcurso = App1ConcursoReglas.objects.filter(estado=1)
    return render(request, "listaConcursos.html", {"concursos": concursos, "categorias": categorias, "reglasConcurso": reglasConcurso, "jsonLang": __t(request)})

def listaConcursosCerrados (request):
    concursos = App1Concurso.objects.order_by('-fecha_inicio', '-fecha_max_registro').exclude(fecha_fin__gt=datetime.date.today().strftime("%Y-%m-%d"))
    #concursos = App1ConcursoInscritosPuntaje.objects.order_by('-puntaje', '-fecha_max_registro')
    return render(request, "listaConcursosCerrados.html", {"concursos": concursos, "jsonLang": __t(request)})

def listaConcursosTodos (request):
    concursos = App1Concurso.objects.all()
    return render(request, "listaConcursosTodos.html", {"concursos": concursos, "jsonLang": __t(request)})
