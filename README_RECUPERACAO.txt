SOURCE RECUPERADA E ATUALIZADA — DISTRITO CITY

Esta source foi reconstruída a partir de um APK decompilado. Não é o projeto Android Studio/Gradle original; os fontes Java/Kotlin originais e a chave privada original de assinatura não estavam disponíveis.

ALTERAÇÃO
- Somente a parede do interior da prefeitura recebeu overlay/placa com “DISTRITO CITY”. O alvo é o material 18 de rio_int_pravo_08.dff, que agora referencia a textura exclusiva distrito001; a textura compartilhada r_pr_logo11 permaneceu inalterada.
- Nenhum banco, fachada, outro prédio ou outro interior foi modificado.
- Os únicos cinco arquivos runtime alterados na DATA são texdb/gta3.img, texdb/txd/txd.txt, texdb/txd/txd.etc.dat, texdb/txd/txd.etc.toc e texdb/txd/txd.etc.tmb. A variante txd.etc.360 foi preservada.
- A DATA original foi mantida separada da cópia modificada. Consulte tools/apply_distrito_wall.py para a reprodução e tools/rebuild_integrity_manifest.py para regenerar o índice.

RELEASE E VALIDAÇÃO DA DATA
- Release pública: https://github.com/afroditevtin-maker/distrito-city-oficial/releases/tag/v2.27-distrito-city
- Asset: angra-classico-v2.27-distrito-city.zip
- Tamanho compactado: 897208097 bytes; 2099 entradas; tamanho descompactado: 2036345061 bytes.
- SHA-256: dfbb3b0f1a2a319940fd7684daedabec03bd03eedeaf78a54566b3d7a8789469.
- O teste CRC do ZIP passou. O índice de integridade acompanha 1783 caminhos protegidos.

RECOMPILAÇÃO
Com Java, Apktool, AAPT2, apksigner e keytool instalados, compile a partir da raiz do clone:
  apktool b --use-aapt2 -a /usr/bin/aapt2 . -o /tmp/distrito-city-unsigned.apk

Assine o APK com uma chave de teste local, nunca incluída no repositório, e valide com `apksigner verify --verbose --print-certs`. O APK da release foi compilado a partir do clone do repositório oficial; sua assinatura é de teste, não a chave original do desenvolvedor. Se a assinatura instalada for diferente, pode ser necessário desinstalar a versão existente antes de instalar.

LIMITES DE VALIDAÇÃO
O ZIP e a assinatura do APK foram validados tecnicamente. Não houve teste dinâmico em aparelho Android/ADB; não se afirma instalação, abertura do jogo ou teste visual dentro de um dispositivo. O download depende da disponibilidade da release pública no GitHub e da conexão/CDN do dispositivo.
