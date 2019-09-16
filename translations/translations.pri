CONFIG += \
    sailfishapp_i18n \
    sailfishapp_i18n_idbased \
    sailfishapp_i18n_unfinished

TRANSLATIONS += \

    translations/harbour-fileman-de.ts \
    translations/harbour-fileman-es.ts \
    translations/harbour-fileman-nl.ts \
    translations/harbour-fileman-fr.ts \
    translations/harbour-fileman-sv.ts \
    translations/harbour-fileman-pl.ts \
    translations/harbour-fileman-zh_CN.ts \
    translations/harbour-fileman-pt_BR.ts \ 
    translations/harbour-fileman-fi.ts

OTHER_FILES += \
    $$TRANSLATIONS \
    $$PWD/update_translations.py
