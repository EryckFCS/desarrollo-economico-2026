# Taller 2: Cálculo a mano de los Índices de Desarrollo Humano

::: {.callout-note}
## Indicaciones generales

* Lea con atención cada situación y resuelva los ejercicios a mano, mostrando todo el procedimiento en el espacio asignado. Utilice los topes (valores mínimos y máximos) y las fórmulas del recordatorio. Trabaje con cuatro decimales y, al final de cada ejercicio, escriba el resultado en el recuadro de respuesta y posteriormente su análisis.
* Recuerde que cada índice se obtiene en dos pasos: primero normalice cada indicador a escala 0-1 y después agregue los índices con la media indicada.
* Cuando un valor supere el máximo, recórtelo al máximo antes de calcular (por ejemplo, 18.9 años esperados se toman como 18).
* Para el ingreso, utilice siempre el logaritmo natural ($\ln$), no el valor en niveles.
* Verifique que sus resultados queden siempre entre 0 y 1 (salvo el GDI, que es un cociente).
:::

### Recordatorio de fórmulas y topes de referencia

* **Índice Dimensional General:**  
  $$I = \frac{\text{Valor Observado} - \text{Mínimo}}{\text{Máximo} - \text{Mínimo}}$$

* **Índice de Ingreso (con escala logarítmica):**  
  $$I_{\text{Ingreso}} = \frac{\ln(\text{Valor}) - \ln(\text{Mínimo})}{\ln(\text{Máximo}) - \ln(\text{Mínimo})}$$

* **Media Geométrica (3 dimensiones):**  
  $$HDI = \sqrt[3]{I_1 \times I_2 \times I_3}$$

* **Media Armónica (2 dimensiones):**  
  $$HARM = \frac{2}{\frac{1}{G_1} + \frac{1}{G_2}}$$

| Indicador | Mínimo | Máximo |
| --- | --- | --- |
| Esperanza de vida (años) | 20 | 85 |
| Esp. de vida — mujeres (GDI) | 22.5 | 87.5 |
| Esp. de vida — hombres (GDI) | 17.5 | 82.5 |
| Años esperados de escolaridad | 0 | 18 |
| Años promedio de escolaridad | 0 | 15 |
| INB per cápita (PPA $) | 100 | 75 000 |
| Emisiones de CO₂ per cápita (t) | 0 | 76.61 |
| Huella material per cápita (t) | 0 | 90.27 |

---

## Ejercicio 1. Índice de Desarrollo Humano (HDI)

Calcule el HDI de los dos países a partir de los siguientes datos. Obtenga primero los tres índices dimensionales (salud, educación e ingreso) y luego combínelos con la media geométrica.

| País | Esp. vida (años) | Años esperados | Años promedio | INB per cápita (PPA $) |
| --- | --- | --- | --- | --- |
| País X | 68.5 | 13.2 | 8.7 | 12 500 |
| País Y | 80.1 | 16.5 | 12.3 | 45 000 |

### Desarrollo paso a paso

#### 1. Desarrollo del País X

* **Índice de Salud ($I_{\text{salud}}$):**

$$I_{\text{salud}} = \frac{68.5 - 20}{85 - 20} = \frac{48.5}{65} \approx 0.7462$$

* **Índice de Educación ($I_{\text{educ}}$):**

$$I_{\text{educ}} = \frac{\frac{13.2}{18} + \frac{8.7}{15}}{2} = \frac{0.7333 + 0.5800}{2} = \frac{1.3133}{2} \approx 0.6567$$

* **Índice de Ingreso ($I_{\text{INB}}$):**

$$I_{\text{INB}} = \frac{\ln(12500) - \ln(100)}{\ln(75000) - \ln(100)} = \frac{9.4335 - 4.6052}{11.2252 - 4.6052} = \frac{4.8283}{6.6201} \approx 0.7293$$

* **Índice de Desarrollo Humano (HDI):**

$$HDI_X = \sqrt[3]{0.7462 \times 0.6567 \times 0.7293} = \sqrt[3]{0.3574} \approx 0.7096$$

::: {.callout-tip}
## Tip Metodológico: Media Geométrica vs Aritmética
La media geométrica multiplica los valores antes de aplicar la raíz cúbica. Esto significa que **si un índice baja mucho, arrastra con más fuerza el promedio general**. No hay sustitución perfecta.
:::

#### 2. Desarrollo del País Y

* **Índice de Salud ($I_{\text{salud}}$):**

$$I_{\text{salud}} = \frac{80.1 - 20}{85 - 20} = \frac{60.1}{65} \approx 0.9246$$

* **Índice de Educación ($I_{\text{educ}}$):**

$$I_{\text{educ}} = \frac{\frac{16.5}{18} + \frac{12.3}{15}}{2} = \frac{0.9167 + 0.8200}{2} = \frac{1.7367}{2} \approx 0.8683$$

* **Índice de Ingreso ($I_{\text{INB}}$):**

$$I_{\text{INB}} = \frac{\ln(45000) - \ln(100)}{\ln(75000) - \ln(100)} = \frac{10.7144 - 4.6052}{11.2252 - 4.6052} = \frac{6.1092}{6.6201} \approx 0.9228$$

* **Índice de Desarrollo Humano (HDI):**

$$HDI_Y = \sqrt[3]{0.9246 \times 0.8683 \times 0.9228} = \sqrt[3]{0.7408} \approx 0.9049$$

### Respuestas y Cuadro Resumen

| País | $I_{\text{salud}}$ | $I_{\text{educación}}$ | $I_{\text{INB}}$ | HDI |
| --- | --- | --- | --- | --- |
| **País X** | 0.7462 | 0.6567 | 0.7293 | **0.7096** |
| **País Y** | 0.9246 | 0.8683 | 0.9228 | **0.9049** |

::: {.callout-important}
## Análisis comparativo del IDH
El **País Y** presenta un nivel de desarrollo humano **Muy Alto** ($HDI \ge 0.800$), impulsado por indicadores robustos en salud (esperanza de vida que supera los 80 años) y un elevado nivel de ingresos e instrucción. Por otro lado, el **País X** se clasifica en la categoría de desarrollo humano **Alto** ($0.700 \le HDI < 0.800$). El factor más crítico para el País X es la **educación (0.6567)**, mostrando la necesidad prioritaria de invertir en infraestructura escolar y retención académica.
:::

---

## Ejercicio 2. HDI ajustado por desigualdad (IHDI)

El País V tiene los indicadores que se muestran abajo y las siguientes desigualdades de Atkinson: salud 12 %, educación 15 % e ingreso 25 %. Calcule el HDI, luego ajuste cada dimensión multiplicándola por $(1 - A)$, obtenga el IHDI y, por último, la pérdida por desigualdad.

| País | Esp. vida | Años esperados | Años promedio | INB (PPA $) | A salud | A educ. | A ingreso |
| --- | --- | --- | --- | --- | --- | --- | --- |
| País V | 72 | 13 | 9 | 11 000 | 12 % | 15 % | 25 % |

### Desarrollo paso a paso

**1. Cálculo del HDI base (sin ajustar):**

* $I_{\text{salud}} = \frac{72 - 20}{85 - 20} = \frac{52}{65} = 0.8000$
* $I_{\text{educ}} = \frac{\frac{13}{18} + \frac{9}{15}}{2} = \frac{0.7222 + 0.6000}{2} \approx 0.6611$
* $I_{\text{INB}} = \frac{\ln(11000) - \ln(100)}{\ln(75000) - \ln(100)} = \frac{9.3057 - 4.6052}{11.2252 - 4.6052} \approx 0.7100$
* $HDI = \sqrt[3]{0.8000 \times 0.6611 \times 0.7100} = \sqrt[3]{0.3755} \approx 0.7215$

**2. Ajuste dimensional por coeficiente de Atkinson $(1 - A)$:**

* **Salud ajustada ($I_{\text{salud}}^*$):**  
  $$I_{\text{salud}}^* = 0.8000 \times (1 - 0.12) = 0.7040$$

* **Educación ajustada ($I_{\text{educ}}^*$):**  
  $$I_{\text{educ}}^* = 0.6611 \times (1 - 0.15) \approx 0.5619$$

* **Ingreso ajustado ($I_{\text{INB}}^*$):**  
  $$I_{\text{INB}}^* = 0.7100 \times (1 - 0.25) \approx 0.5325$$

**3. Cálculo del IHDI:**

$$IHDI = \sqrt[3]{0.7040 \times 0.5619 \times 0.5325} = \sqrt[3]{0.2106} \approx 0.5950$$

**4. Cálculo de la pérdida porcentual por desigualdad:**

$$\text{Pérdida} = 100 \times \left(1 - \frac{IHDI}{HDI}\right) = 100 \times \left(1 - \frac{0.5950}{0.7215}\right) \approx 17.5312\%$$

::: {.callout-tip}
## Tip para el Examen: El factor de descuento
Para aplicar la desigualdad de Atkinson, recuerda que multiplicas por $(1 - A)$. Por ejemplo, si la desigualdad de ingresos es del 25%, el descuento neto es dejar solo el 75% del índice original ($1 - 0.25 = 0.75$).
:::

### Respuestas

| HDI | IHDI | Pérdida por desigualdad (%) |
| --- | --- | --- |
| **0.7215** | **0.5950** | **17.5312%** |

::: {.callout-warning}
## Análisis de Equidad Social
El País V pierde un **17.53%** de su potencial de desarrollo a causa de las disparidades internas. El principal factor distorsionador es la **desigualdad en ingresos (25%)**, que deprime el subíndice económico a 0.5325. Esta desigualdad provoca que la clasificación real del país descienda desde un nivel **Alto** (0.7215) a un nivel **Medio** (0.5950).
:::

---

## Ejercicio 3. Índice de Desarrollo de Género (GDI)

Calcule el HDI separado para mujeres y para hombres del País Z, y obtenga el GDI como el cociente entre ambos. Tenga presente que la esperanza de vida usa topes distintos según el sexo.

| Grupo | Esp. vida | Años esperados | Años promedio | Ingreso estimado (PPA $) |
| --- | --- | --- | --- | --- |
| Mujeres | 78 | 14.5 | 11 | 6 000 |
| Hombres | 73 | 13.8 | 10.5 | 22 000 |

### Desarrollo paso a paso

#### 1. Cálculo para Mujeres ($HDI_F$)

* **Salud ($I_{\text{salud}, F}$):** (Tope Mujeres: mín 22.5, máx 87.5)

$$I_{\text{salud}, F} = \frac{78 - 22.5}{87.5 - 22.5} = \frac{55.5}{65} \approx 0.8538$$

* **Educación ($I_{\text{educ}, F}$):**

$$I_{\text{educ}, F} = \frac{\frac{14.5}{18} + \frac{11}{15}}{2} = \frac{0.8056 + 0.7333}{2} \approx 0.7694$$

* **Ingreso ($I_{\text{INB}, F}$):**

$$I_{\text{INB}, F} = \frac{\ln(6000) - \ln(100)}{\ln(75000) - \ln(100)} = \frac{4.0943}{6.6201} \approx 0.6185$$

* **HDI Femenino ($HDI_F$):**

$$HDI_F = \sqrt[3]{0.8538 \times 0.7694 \times 0.6185} \approx 0.7407$$

#### 2. Cálculo para Hombres ($HDI_M$)

* **Salud ($I_{\text{salud}, H}$):** (Tope Hombres: mín 17.5, máx 82.5)

$$I_{\text{salud}, H} = \frac{73 - 17.5}{82.5 - 17.5} = \frac{55.5}{65} \approx 0.8538$$

* **Educación ($I_{\text{educ}, H}$):**

$$I_{\text{educ}, H} = \frac{\frac{13.8}{18} + \frac{10.5}{15}}{2} = \frac{0.7667 + 0.7000}{2} \approx 0.7333$$

* **Ingreso ($I_{\text{INB}, H}$):**

$$I_{\text{INB}, H} = \frac{\ln(22000) - \ln(100)}{\ln(75000) - \ln(100)} = \frac{5.3936}{6.6201} \approx 0.8147$$

* **HDI Masculino ($HDI_M$):**

$$HDI_M = \sqrt[3]{0.8538 \times 0.7333 \times 0.8147} \approx 0.7990$$

#### 3. Cálculo del GDI

$$GDI = \frac{HDI_F}{HDI_M} = \frac{0.7407}{0.7990} \approx 0.9270$$

::: {.callout-tip}
## Tip Mnemotécnico: Topes del GDI
Para recordar los topes de esperanza de vida en GDI: **las mujeres viven estadísticamente más**, por lo que sus límites se desplazan **5 años hacia arriba** (22.5 a 87.5) frente a los hombres (17.5 a 82.5). El promedio aritmético de ambos vuelve a ser la escala estándar general (20 y 85).
:::

### Respuestas

| HDI mujeres | HDI hombres | GDI |
| --- | --- | --- |
| **0.7407** | **0.7990** | **0.9270** |

::: {.callout-important}
## Análisis de Disparidad de Género
El GDI de **0.9270** indica una disparidad de género significativa en perjuicio de las mujeres (desviación superior al 7% respecto a la paridad). El análisis revela que, aunque no hay brechas en salud (ambos subíndices en 0.8538) y la educación de las mujeres es discretamente superior, la brecha de ingresos (donde los hombres ganan **3.6 veces** más que las mujeres) es el factor determinante detrás del rezago del desarrollo femenino en el País Z.
:::

---

## Ejercicio 4. Índice de Desigualdad de Género (GII)

Calcule el GII del País W. Recuerde que el índice de salud reproductiva de los hombres se fija en 1, que la razón de mortalidad materna se recorta entre 10 y 1000, y que el resultado final se obtiene comparando la media armónica de ambos sexos con la referencia de igualdad.

| Indicador | Mujeres | Hombres |
| --- | --- | --- |
| Razón de mortalidad materna (por 100 000) | 120 | --- |
| Tasa de fecundidad adolescente (por 1 000) | 60 | --- |
| Escaños en el parlamento (%) | 28 | 72 |
| Población con secundaria (%) | 55 | 60 |
| Tasa de participación laboral (%) | 50 | 75 |

### Desarrollo paso a paso

#### 1. Índices Dimensionales Femeninos (F)

* **Salud ($G_{\text{sal}, F}$):**

$$G_{\text{sal}, F} = \sqrt{\frac{10}{120} \times \frac{1}{60}} = \sqrt{0.0833 \times 0.0167} \approx 0.0373$$

* **Empoderamiento ($G_{\text{emp}, F}$):**

$$G_{\text{emp}, F} = \sqrt{0.28 \times 0.55} = \sqrt{0.1540} \approx 0.3924$$

* **Mercado Laboral ($G_{\text{lab}, F}$):**

$$G_{\text{lab}, F} = \frac{50}{100} = 0.5000$$

* **Índice Agregado Femenino ($G_F$):**

$$G_F = \sqrt[3]{0.0373 \times 0.3924 \times 0.5000} = \sqrt[3]{0.007318} \approx 0.1941$$

#### 2. Índices Dimensionales Masculinos (M)

* **Salud ($G_{\text{sal}, M}$):** Se fija en **1.0000** por definición metodológica.
* **Empoderamiento ($G_{\text{emp}, M}$):**

$$G_{\text{emp}, M} = \sqrt{0.72 \times 0.60} = \sqrt{0.4320} \approx 0.6573$$

* **Mercado Laboral ($G_{\text{lab}, M}$):**

$$G_{\text{lab}, M} = \frac{75}{100} = 0.7500$$

* **Índice Agregado Masculino ($G_M$):**

$$G_M = \sqrt[3]{1.0000 \times 0.6573 \times 0.7500} = \sqrt[3]{0.4930} \approx 0.7900$$

#### 3. Media Armónica ($HARM$)

$$HARM = \frac{2}{\frac{1}{G_F} + \frac{1}{G_M}} = \frac{2}{\frac{1}{0.1941} + \frac{1}{0.7900}} = \frac{2}{5.1520 + 1.2658} \approx 0.3116$$

#### 4. Referencia de Igualdad ($Ref$)

$$Ref_{\text{sal}} = \frac{0.0373 + 1.0000}{2} = 0.5187$$
$$Ref_{\text{emp}} = \frac{0.3924 + 0.6573}{2} = 0.5249$$
$$Ref_{\text{lab}} = \frac{0.5000 + 0.7500}{2} = 0.6250$$
$$Ref = \sqrt[3]{0.5187 \times 0.5249 \times 0.6250} = \sqrt[3]{0.1701} \approx 0.5541$$

#### 5. Índice de Desigualdad de Género (GII)

$$GII = 1 - \frac{HARM}{Ref} = 1 - \frac{0.3116}{0.5541} \approx 0.4376$$

::: {.callout-tip}
## Tip para el Examen: ¿Qué representa el GII?
A diferencia de otros índices, **un GII más alto es peor**. 0 representa igualdad perfecta y 1 desigualdad absoluta. Este índice mide la **pérdida de desarrollo humano potencial** debido a la discriminación de género.
:::

### Respuestas

| $G_F$ | $G_M$ | Media armónica | Referencia | GII |
| --- | --- | --- | --- | --- |
| 0.1941 | 0.7900 | 0.3116 | 0.5541 | **0.4376** |

::: {.callout-warning}
## Análisis de Inequidad de Género
Un GII de **0.4376 (43.76%)** indica que el País W pierde casi la mitad de sus posibilidades de progreso debido a inequidades de género. El factor más alarmante es el subíndice de salud reproductiva de las mujeres ($0.0373$), lastrado por una razón de mortalidad materna elevada y una tasa de fecundidad adolescente que limita las trayectorias educativas y profesionales de las jóvenes.
:::

---

## Ejercicio 5. HDI ajustado por presiones planetarias (PHDI)

Retome los países X e Y del Ejercicio 1 y descuente su nivel de desarrollo según sus presiones ambientales. Calcule el índice de CO₂ y el de huella material, promédielos para obtener el factor de ajuste y multiplíquelo por el HDI.

| País | HDI (Ejercicio 1) | CO₂ per cápita (t) | Huella material per cápita (t) |
| --- | --- | --- | --- |
| País X | 0.7096 | 5.2 | 9.8 |
| País Y | 0.9049 | 11.4 | 25.6 |

### Desarrollo paso a paso

#### 1. Desarrollo del País X

* **Índice de $CO_2$ ($I_{CO_2}$):**

$$I_{CO_2} = \frac{76.61 - 5.2}{76.61} = \frac{71.41}{76.61} \approx 0.9321$$

* **Índice de Huella Material ($I_{\text{huella}}$):**

$$I_{\text{huella}} = \frac{90.27 - 9.8}{90.27} = \frac{80.47}{90.27} \approx 0.8914$$

* **Factor de Ajuste:**

$$\text{Factor}_X = \frac{0.9321 + 0.8914}{2} = 0.9118$$

* **PHDI del País X:**

$$PHDI_X = 0.7096 \times 0.9118 \approx 0.6470$$

#### 2. Desarrollo del País Y

* **Índice de $CO_2$ ($I_{CO_2}$):**

$$I_{CO_2} = \frac{76.61 - 11.4}{76.61} \approx 0.8512$$

* **Índice de Huella Material ($I_{\text{huella}}$):**

$$I_{\text{huella}} = \frac{90.27 - 25.6}{90.27} \approx 0.7164$$

* **Factor de Ajuste:**

$$\text{Factor}_Y = \frac{0.8512 + 0.7164}{2} \approx 0.7838$$

* **PHDI del País Y:**

$$PHDI_Y = 0.9049 \times 0.7838 \approx 0.7093$$

::: {.callout-tip}
## Tip de Interpretación del PHDI
El factor de ajuste del PHDI es **menor mientras mayor sea la huella ecológica**. Por eso la resta en el numerador es $\text{Máximo} - \text{Valor}$, castigando a los países emisores. Si un país tiene cero emisiones y cero huella, su factor sería 1 (no sufre descuento).
:::

### Respuestas

| País | $I_{\text{CO₂}}$ | $I_{\text{huella}}$ | Factor | PHDI |
| --- | --- | --- | --- | --- |
| **País X** | 0.9321 | 0.8914 | 0.9118 | **0.6470** |
| **País Y** | 0.8512 | 0.7164 | 0.7838 | **0.7093** |

::: {.callout-important}
## Análisis de Sostenibilidad Ecológica
El ajuste por presiones planetarias reduce el bienestar aparente de forma asimétrica. El **País Y** sufre una fuerte caída en su indicador (el factor de 0.7838 descuenta más del 21% de su desarrollo, bajando su PHDI a 0.7093) debido a su alto consumo material y emisiones. La brecha inicial entre el País Y y el País X se reduce drásticamente de **0.1953** (en el HDI tradicional) a apenas **0.0623** en el PHDI. Esto demuestra que los altos niveles de vida en el País Y se sostienen sobre una base ecológica insostenible.
:::

---

## Anexo: Fórmulas y Metodología de los Índices del PNUD

### 1. Normalización General
$$I_x = \frac{\text{Valor Observado} - \text{Mínimo}}{\text{Máximo} - \text{Mínimo}}$$
*Reescala cualquier indicador en un rango de 0 a 1.*

### 2. Dimensión de Ingreso
$$I_{\text{Ingreso}} = \frac{\ln(INB) - \ln(100)}{\ln(75000) - \ln(100)}$$
*Usa logaritmo natural ($\ln$) para reflejar que la utilidad marginal del ingreso disminuye a niveles elevados.*

### 3. Ajuste por Desigualdad (Atkinson)
$$I^* = I \times (1 - A)$$
*Descuenta la desigualdad interna del país en cada componente.*

### 4. Desigualdad de Género (GII)
$$GII = 1 - \frac{HARM}{Ref}$$
*Mide la disparidad entre la media armónica por sexo ($HARM$) y la referencia de igualdad absoluta ($Ref$).*

---

## Plantillas para la Redacción de Análisis Económico

Estas plantillas normalizan la argumentación técnica para informes profesionales:

* **Para HDI:** El país presenta un desarrollo **[Muy Alto/Alto/Medio/Bajo]** liderado por **[Dimensión fuerte]** ($[Subíndice]$) y limitado por **[Dimensión débil]** ($[Subíndice]$).
* **Para IHDI:** La desigualdad interna resta un **[Pérdida %]** del desarrollo humano potencial, siendo la brecha en **[Dimensión]** el principal catalizador de esta pérdida.
* **Para GDI:** Se observa una disparidad de género **[Moderada/Severa]** ($[GDI]$) impulsada mayoritariamente por una asimetría en **[Ingreso/Educación]** de $[Proporción]$ veces a favor de los hombres.
* **Para PHDI:** La incorporación de presiones ambientales reduce un **[Descuento %]** del desarrollo debido a emisiones de $CO_2$ ($[CO_2 \text{ pc}]$ t) y sobreconsumo material ($[Huella]$ t), denotando un modelo de crecimiento ecológicamente insostenible.