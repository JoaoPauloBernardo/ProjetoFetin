#--------------------------------------------------------------------------------------------- importação de bibiliotecas
# ------------ biblioteca de regex para fazer as manipulações dos textos
import re 

# ------------------------------------- bibliotecas para extração do pdf
from pdfminer.high_level import extract_pages, extract_text
import pymupdf
import pathlib

#---------------------------------- biblioteca para gerar o arquivo json
import json

#-------------------------------------------------------------------------------------------------- EXTRAÇÃO DO TEXTO PDF
#-------------------------------------------------------------------------------------------------------- NÃO MEXER -----
fname = '_escala\exemplo.pdf' # busca esse caminho específico
                                                # e guarda em uma variável

with pymupdf.open(fname) as doc: # o 'pymupdf abre o pdf especificado
        text = chr(12).join([page.get_text() for page in doc]) # pega o texto de cada página do documento

pathlib.Path(fname + ".txt").write_bytes(text.encode()) # cria um documento txt com texto adquirido

#------------------------------------------------------------------------------------------------------------ dicionarios
empresas = { # traduz os códigos que representam as empresas aéreas
        "G3" : "GOL" # para esse protótipo apenas temos a gol, mas serão adicionados mais
}

aeroportos = { # traduz os código aeroportuário ICAO para o nome, cidade/estado do aeroporto
        "MCP" : "Amapá",
        "APQ" : "Arapiraca",
        "BAZ" : "Barcelos",
        "BEL" : "Belém",
        "CNF" : "Belo Horizonte",
        "PLU" : "Pampulha",
        "BVB" : "Boa Vista",
        "BSB" : "Brasilia",
        "CFC" : "Caçador",
        "VCP" : "Viracopos",
        "CPQ" : "Amarais",
        "CAU" : "Caruaru",
        "CAF" : "Carauari",
        "CAC" : "Cascavel",
        "CIZ" : "Coari",
        "CDJ" : "Conceição do Araguaia",
        "CZS" : "Cruzeiro do Sul",
        "BFH" : "Bacacheri",
        "CWB" : "Curitiba",
        "FEJ" : "Feijó",
        "FLN" : "Florianópolis",
        "FOR" : "Pinto Martins",
        "IGU" : "Foz do Iguaçu",
        "GYN" : "Goiânia",
        "GRU" : "Guarulhos",
        "IMP" : "Imperatriz",
        "JJD" : "Jericoacoara",
        "JOI" : "Joinville",
        "JPA" : "João Pessoa",
        "JDF" : "Juiz de Fora",
        "QDV" : "Jundiaí",
        "MCP" : "Macapá",
        "MAO" : "Manaus",
        "MCZ" : "Maceió",
        "MVF" : "Mossoró",
        "NVT" : "Navegantes",
        "NAT" : "Natal",
        "PHB" : "Parnaíba",
        "PGZ" : "Ponta Grossa",
        "POA" : "Porto Alegre",
        "PVH" : "Porto Velho",
        "REC" : "Recife",
        "RAO" : "Ribeirão Petro",
        "RBR" : "Rio Branco",
        "SDU" : "Santos Dumont",
        "GIG" : "Galeão",       
        "ROO" : "Rondonópolis",
        "RIA" : "Santa Maria",
        "SSZ" : "Santos",
        "SSA" : "Salvador",
        "QSQ" : "Latam",
        "SLZ" : "São Luis",
        "CGH" : "Congonhas",
        "ZMD" : "Sena Madureira",
        "SOD" : "Sorocaba",
        "TBT" : "Tabatinga",
        "TRQ" : "Taraucá",
        "TFF" : "Tefé",
        "THE" : "Teresina",
        "VDC" : "Vitória da Conquista",
        "AJU" : "Aracaju"
}

dias_da_semana = { # traduz os dias da semana no pdf para seus nomes completos
        "Mon" : "segunda-feira",
        "Tue" : "terca-feira",
        "Wed" : "quarta-feira",
        "Thu" : "quinta-feira",
        "Fri" : "sexta-feira",
        "Sat" : "sabado",
        "Sun" : "domingo"
}

meses_do_ano = { # traduz os meses no pdf para sua data numérica
        "Jan" : "01",
        "Feb" : "02",
        "Mar" : "03",
        "Apr" : "04",
        "May" : "05",
        "Jun" : "06",
        "Jul" : "07",
        "Aug" : "08",
        "Sep" : "09",
        "Oct" : "10",
        "Nov" : "11",
        "Dec" : "12"
}

#---------------------------------------------------------------------------------------------------------------- funções

#--------------------------------------------------------------- transforma os tuples (saídas do regex) em strings
def tuples_para_string(regex, tuple_lista):

        try:
                stringFinal = [] # cria uma lista vazia para armazenar dados depois

                for item in tuple_lista:

                        compString = ''.join(map(str, item)) # transforma o tuple gerado por regex em string

                        stringFinal.append(re.findall(regex, compString)) # procura o regex desejado 
                                                        # e adiciona na lista quando encontra

                return stringFinal
        
        except re.error as e: # caso ocorra algum erro ele não vai travar o código, vai avisar
                print(f"Padrao de regex invalido: {e}")
                return [] # caso ocorra um erro ele retorna uma lista vazia

#---------------------------------------------------------------------------------------- pega o dado do ano atual
def coletaAno():
        # padrão de regex que busca onde o ano vai ser citado no arquivo inteiro
        ano = re.findall(r"\s[0-9]{2}[A-Za-z]{3}[0-9]{2}\s\W\s[0-9]{2}[A-Za-z]{3}[0-9]{2}", text)

        # várias buscas pelo valor do ano para identa-lo melhor
        anoAtualAux = tuples_para_string(r"[0-9]{2}\W", ano)
        anoAtual = tuples_para_string(r"[0-9]{2}", anoAtualAux)
        anoAtual_str = str(anoAtual[0]) # transforma o ano em string

        anoAtual_str = anoAtual_str.strip("[]'") # remove os colchetes e aspas para a identação
        
        return anoAtual_str

#---------------------------------------------------------------------------------------- pega o dado do mês atual
def coletaMes():
        # padrão de regex que busca o mês no arquivo inteiro
        mes = re.findall(r"\s[0-9]{2}[A-Za-z]{3}[0-9]{2}\s\W\s[0-9]{2}[A-Za-z]{3}[0-9]{2}", text)
        
        # buscas que separam apenas o valor do mês e transformam ele em string
        mesAtual = re.findall(r"[A-Za-z]{3}", mes[0])
        mesAtual_str = mesAtual[0]

        if mesAtual_str in meses_do_ano: # busca o valor do mês atual no dicionário
                return meses_do_ano[mesAtual_str] # retorna a tradução caso ele ache
        
        else:
                return "nada encontrado no dicionário"
        
def tabelaVoo(bloco_txt):

        blocoVoo = tuples_para_string(r"\n[A-Z0-9]{2}\n[0-9]{4}\n[A-Z]{3}\n[0-9]{4}\n[0-9]{4}\n[A-Z]{3}\n[A-Z0-9]{4}", bloco_txt)

        empresaAux = tuples_para_string(r"\n[A-Z0-9]{2}\n", blocoVoo)
        
        empresa = tuples_para_string(r"[A-Z0-9]{2}", empresaAux)

        numVooAux = tuples_para_string(r"\n[A-Z0-9]{2}\n[0-9]{4}", blocoVoo)
        numVoo = tuples_para_string(r"\n[0-9]{4}", numVooAux)

        blocoOrigem = tuples_para_string(r"\n[A-Z]{3}\n[0-9]{4}\n", blocoVoo)

        localOrigem = tuples_para_string(r"[A-Z]{3}", blocoOrigem)

        horaOrigemAux = tuples_para_string(r"\n[0-9]{4}\n", blocoOrigem)
        
        horasOrigem = tuples_para_string(r"\n[0-9]{2}", horaOrigemAux)
        minutosOrigem = tuples_para_string(r"[0-9]{2}\n", horaOrigemAux)

        blocoDestino = tuples_para_string(r"[0-9]{4}\n[0-9]{4}\n[A-Z]{3}", blocoVoo)

        localDestino = tuples_para_string(r"[A-Z]{3}", blocoDestino)

        horaDestinoAux = tuples_para_string(r"\n[0-9]{4}\n", blocoDestino)

        horasDestino = tuples_para_string(r"\n[0-9]{2}", horaDestinoAux)
        minutosDestino = tuples_para_string(r"[0-9]{2}\n", horaDestinoAux)

        tipoAviao = tuples_para_string(r"\n[A-Z]{1}[A-Z0-9]{3}", blocoVoo)

        voo = []

        for i in range(len(bloco_txt)):

                #--------------------------------------------------------------------------------------------------------------------------------
                empresa_str = ''
                
                for e in empresa[i]:
                        empresa_str += ''.join(e) + ", "

                empresa_str = empresa_str.strip(", ")

                empresa_list = [x.strip() for x in empresa_str.split(",") if x.strip()]
                empresa_names = [empresas.get(x, x) for x in empresa_list]
                #--------------------------------------------------------------------------------------------------------------------------------
                numVoo_str = ''

                for v in numVoo[i]:
                        numVoo_str += ''.join(v) + ", "

                numVoo_str = numVoo_str.strip(", ")

                numVoo_list = [x.strip() for x in numVoo_str.split(", ") if x.strip()]
                #--------------------------------------------------------------------------------------------------------------------------------
                localOrigem_str = ''
                
                for lO in localOrigem[i]:
                        localOrigem_str += ''.join(lO) + ", "

                localOrigem_str = localOrigem_str.strip(", ")

                localOrigem_list = [x.strip() for x in localOrigem_str.split(",") if x.strip()]
                localOrigem_names = [aeroportos.get(x, x) for x in localOrigem_list]

                #--------------------------------------------------------------------------------------------------------------------------------
                horasOrigem_str = ''

                for hO in horasOrigem[i]:
                        horasOrigem_str += ''.join(hO) + ", "

                horasOrigem_str = horasOrigem_str.strip(", ")

                horasOrigem_list = [x.strip() for x in horasOrigem_str.split(",") if x.strip()]

                #--------------------------------------------------------------------------------------------------------------------------------
                minutosOrigem_str = ''

                for mO in minutosOrigem[i]:
                        minutosOrigem_str += ''.join(mO) + ", "

                minutosOrigem_str = minutosOrigem_str.strip(", ")

                minutosOrigem_list = [x.strip() for x in minutosOrigem_str.split(",") if x.strip()]

                #--------------------------------------------------------------------------------------------------------------------------------
                localDestino_str = ''
                
                for lD in localDestino[i]:
                        localDestino_str += ''.join(lD) + ", "

                localDestino_str = localDestino_str.strip(", ")

                localDestino_list = [x.strip() for x in localDestino_str.split(",") if x.strip()]
                localDestino_names = [aeroportos.get(x, x) for x in localDestino_list]

                #--------------------------------------------------------------------------------------------------------------------------------
                horasDestino_str = ''

                for hD in horasDestino[i]:
                        horasDestino_str += ''.join(hD) + ", "

                horasDestino_str = horasDestino_str.strip(", ")

                horasDestino_list = [x.strip() for x in horasDestino_str.split(",") if x.strip()]

                #--------------------------------------------------------------------------------------------------------------------------------
                minutosDestino_str = ''

                for mD in minutosDestino[i]:
                        minutosDestino_str += ''.join(mD) + ", "

                minutosDestino_str = minutosDestino_str.strip(", ")

                minutosDestino_list = [x.strip() for x in minutosDestino_str.split(",") if x.strip()]

                #--------------------------------------------------------------------------------------------------------------------------------
                tipoAviao_str = ''

                for a in tipoAviao[i]:
                        tipoAviao_str += ''.join(a) + ", "

                tipoAviao_str = tipoAviao_str.strip(", ")

                tipoAviao_list = [x.strip() for x in tipoAviao_str.split(",") if x.strip()]

                #--------------------------------------------------------------------------------------------------------------------------------
                voo_dic = []

                for j in range(len(empresa_names)):

                        voo_dic.append(
                                {
                                        "empresa" : empresa_names[j],
                                        "numero do voo" : numVoo_list[j],
                                        "aeroporto de origem" : localOrigem_names[j],
                                        "horario de saida" : f"{horasOrigem_list[j]}:{minutosOrigem_list[j]}",
                                        "aeroporto de destino" : localDestino_names[j],
                                        "horario de chegada" : f"{horasDestino_list[j]}:{minutosDestino_list[j]}",
                                        "tipo da aeronave" : tipoAviao_list[j]
                                }
                        )
                        
                voo.append(voo_dic)

        return voo

def tabelaData(bloco_txt): # tabela de blocoDatas(dia, mês, ano, dia da semana, total de horas)

        blocoData = tuples_para_string(r"[A-Z]{1}[a-z]{2}[0-9]{2}", bloco_txt) # separa os valores de blocoData

        diaSemana = tuples_para_string(r"[A-Z]{1}[a-z]{2}", blocoData)
        diaAtual = tuples_para_string(r"[0-9]{2}", blocoData)
        
        ft = tuples_para_string(r"FT\n[0-9]{2}\W[0-9]{2}\W", bloco_txt)
        horas = tuples_para_string(r"[0-9]{2}\W[0-9]{2}", ft)

        y = tabelaVoo(bloco_txt)

        dataEscala = []

        for i in range(len(bloco_txt)):

                diaSemana_str = ''.join(diaSemana[i])

                diaAtual_str = ''.join(diaAtual[i])

                horasVoo = ''
                for h in horas[i]:
                        horasVoo += ''.join(h) + ", "
                horasVoo = horasVoo.strip(", ")

                mesAtual_str = coletaMes()

                anoAtual_str = coletaAno()

                for j in range(len(y[i])):

                        if diaSemana_str in dias_da_semana:
                       
                                dataEscala.append(
                                        {
                                                "data" : f"{diaAtual_str}/{mesAtual_str}/{anoAtual_str}", 
                                                "semana" : f"{dias_da_semana[diaSemana_str]}",
                                                "flight_time_hoje" : horasVoo,
                                                "voo" : y[i][j]
                                        }
                                )
                
                        else:
                                print("Algo deu errado, dado inválido")

        return dataEscala



#-------------------------------------------------------------------------------------------- horários de chegada e saída


# -------------------------------------------------------- cortando o pdf para facilitar a leitura de dados

#------------------------------------- checando os tamanhos para facilitar na hora de cropar
# page = doc[0]
# crop_box = page.cropbox

# esquerda = crop_box[0] #        0.0   / 0.0in
# direita = crop_box[2] #         595.0 / 11.67in
# largura = direita - esquerda #  595.0 / 11.67

# top = crop_box[1] #             0.0     / 0.0in
# bottom = crop_box[3] #          842.0   / 8.24in
# altura = top - bottom #         - 842.0 / - 8.24in

# print(f"Range horizontal da crop box: ({esquerda}, {direita}) - width: {largura}")
# print(f"Range vertical da crop box: ({bottom}, {top}) - height: {altura}")

#with pymupdf.open() as newDoc: # criando um novo documento para armazenar a versão cortada
#    for i in range(num_pages):
#        page = doc[i]
#        doc.save("")
        
#----------------------------------------------------------------------------------------------- separando por blocoDatas

auxSUB = re.sub(r"\W[A-Z]{2}\s[0-9]{2}\s(days)\s([0-9]{2}\W){2}", "\n\n", text) # adiciona quebra de linhas
                                                # onde o bloco de blocoDatas deverá terminar

jornadaDia = re.findall(r"\s([A-Z]{1}[a-z]{2}[0-9]{2})(\n)?((.+\n)*)", auxSUB) # pega todos os blocos de blocoDatas
                                                        # e os coloca em uma tuple separados por blocoData
tabelaCompleta = tabelaData(jornadaDia)

x = tabelaData(jornadaDia)

for i in range(len(x)):
        print(f"{i}: {x[i]}\n")

tabela = tabelaCompleta

for i in range(len(tabela)):
        if tabela[i].get("voo") == ' ':
                tabela.pop(i)

with open("output.txt", "w") as f:
    for i in range(len(tabela)):
        f.write(f"{tabela[i]}\n")

with open("output.json", "w", encoding="utf-8") as f:
    json.dump(tabela, f, indent=4, ensure_ascii=False)

with open("backup.json", "w", encoding="utf-8") as f:
    json.dump(tabela, f, indent=4, ensure_ascii=False)            