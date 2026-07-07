import os

bib_entries = """
@book{sen1999development,
  title={Development as Freedom},
  author={Sen, Amartya},
  year={1999},
  publisher={Oxford University Press},
  address={Oxford}
}

@article{alkire2011counting,
  title={Counting and multidimensional poverty measurement},
  author={Alkire, Sabina and Foster, James},
  journal={Journal of Public Economics},
  volume={95},
  number={7-8},
  pages={476--487},
  year={2011},
  publisher={Elsevier},
  doi={10.1016/j.jpubeco.2010.11.006}
}

@book{tezanos2013desarrollo,
  title={Desarrollo humano, pobreza y desigualdades},
  author={Tezanos Vázquez, Sergio and Quiñones Montellano, Amelia and Gutiérrez Sobrao, Daniel and Madrueño Aguilar, Rafael},
  year={2013},
  publisher={Cátedra de Cooperación Internacional y con Iberoamérica, Universidad de Cantabria},
  address={Santander},
  url={https://www.ciberoamericana.com/pdf/MANUAL1.pdf}
}

@report{inec2008pobreza,
  title={Medidas de pobreza y extrema pobreza por ingresos. Resumen Ejecutivo},
  author={{Instituto Nacional de Estadística y Censos}},
  year={2008},
  institution={INEC},
  address={Quito},
  url={https://www.ecuadorencifras.gob.ec/documentos/web-inec/POBREZA/Metodologia+de+pobreza+por+ingresos.pdf}
}

@manual{inec2025guia,
  title={Guía de usuario de la Base de Datos de la Encuesta Nacional de Empleo, Desempleo y Subempleo (ENEMDU) Acumulada Anual 2025},
  author={{Instituto Nacional de Estadística y Censos}},
  year={2025},
  organization={INEC},
  address={Quito},
  url={https://www.ecuadorencifras.gob.ec/}
}

@book{wolter2007introduction,
  title={Introduction to Variance Estimation},
  author={Wolter, Kirk M.},
  year={2007},
  edition={Second},
  publisher={Springer},
  address={New York}
}

@article{bourguignon1979decomposable,
  title={Decomposable income inequality measures},
  author={Bourguignon, François},
  journal={Econometrica},
  volume={47},
  number={4},
  pages={901--920},
  year={1979},
  publisher={JSTOR},
  doi={10.2307/1911038}
}

@book{cowell2011measuring,
  title={Measuring Inequality},
  author={Cowell, Frank A.},
  year={2011},
  edition={Third},
  publisher={Oxford University Press},
  address={Oxford}
}

@article{jenkins1999ineqdeco,
  title={INEQDECO: Stata module to calculate inequality indices with decomposition by subgroup},
  author={Jenkins, Stephen P.},
  journal={Statistical Software Components},
  year={1999},
  publisher={Boston College Department of Economics}
}

@report{inec2016ipm,
  title={Metodología de construcción del Índice de Pobreza Multidimensional (IPM) oficial de Ecuador},
  author={{Instituto Nacional de Estadística y Censos}},
  year={2016},
  institution={INEC},
  address={Quito}
}

@article{anazco2016medicion,
  title={Medición de la pobreza multidimensional en Ecuador},
  author={Añazco, Ricardo C. and Pérez, Francisco J.},
  journal={Revista de Estadística y Metodología},
  pages={27--51},
  year={2016}
}
"""

for path in ["references.bib", "bibliography/references.bib"]:
    abs_path = os.path.abspath(path)
    if os.path.exists(abs_path):
        with open(abs_path, "r", encoding="utf-8") as f:
            content = f.read()
        
        # Avoid double-appending
        if "@book{sen1999development" not in content:
            with open(abs_path, "a", encoding="utf-8") as f:
                f.write(bib_entries)
            print(f"Appended successfully to {path}")
        else:
            print(f"Already exists in {path}")
